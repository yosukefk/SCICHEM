
C***********************************************************************
C   Portions of Models-3/CMAQ software were developed or based on      *
C   information from various groups: Federal Government employees,     *
C   contractors working on a United States Government contract, and    *
C   non-Federal sources (including research institutions).  These      *
C   research institutions have given the Government permission to      *
C   use, prepare derivative works, and distribute copies of their      *
C   work in Models-3/CMAQ to the public and to permit others to do     *
C   so.  EPA therefore grants similar permissions for use of the       *
C   Models-3/CMAQ software, but users are requested to provide copies  *
C   of derivative works to the Government without restrictions as to   *
C   use by others.  Users are responsible for acquiring their own      *
C   copies of commercial software associated with Models-3/CMAQ and    *
C   for complying with vendor requirements.  Software copyrights by    *
C   the MCNC Environmental Modeling Center are used with their         *
C   permissions subject to the above restrictions.                     *
C***********************************************************************

C RCS file, release, date & time of last delta, author, state, [and locker]
C $Header$

C what(1) key, module and SID; SCCS file; date and time of last delta:
C %W% %P% %G% %U%

C:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

c //////////////////////////////////////////////////////////////////
c  SUBROUTINE ORGAER5 implements several pathways for secondary
c   organic aerosol (SOA) formation, as recommended by Edney et al.
c   (2007).  These include SOA formation from isoprene, monoterpenes,
c   sesquiterpenes, long alkanes, and aromatics (incl. benzene).
c
c   Input includes the concentrations of reactive organic gases (ROG)
c   that were oxidized during the time step (ORGPROD), the vapor-phase 
c   concentration of each semi-volatile organic compound, the 
c   concentration of each SOA species, and the concentration of primary 
c   organic aerosol (all concentrations are stored in the CBLK array).
c   Output includes updated concentrations of SOA species, vapor-phase
c   semi-volatile organic compounds, and moments of the accumulation 
c   mode.  The geometric mean diameter of the accumulation mode is also
c   updated.  All SOA formation is restricted to the accumulation mode.
c
c   This code relies on 10 counter species to be incorporated in the 
c   gas-phase chemical mechanisms to track the amounts of individual 
c   ROG that reacted during the current time step (i.e., NPREC=10).
c   The arrays of length = NPREC are ordered as follows:
c         (1) "long" alkanes  (ALKRXN)
c         (2) low-yield aromatics, high-NOx pathway (XYLNRXN)
c         (3) low-yield aromatics, low-NOx pathway (XYLHRXN)
c         (4) high-yield aromatics, high-NOx pathway (TOLNRXN)
c         (5) high-yield aromatics, low-NOx pathway (TOLHRXN)
c         (6) benzene, high-NOx pathway (BNZNRXN)
c         (7) benzene, low-NOx pathway (BNZHRXN)
c         (8) monoterpenes (TRPRXN)
c         (9) isoprene (ISOPRXN)
c        (10) sesquiterpenes (SESQRXN)
c
c   In total, 12 organic species are allowed to partition between the 
c   vapor and particulate phases (i.e., NCVAP=12). The arrays of 
c   length = NCVAP are ordered as follows:
c         (1) alkane (1 semi-volatile product)
c       (2&3) low-yield aromatics, high-NOx pathway (2 products)
c       (4&5) high-yield aromatics, high-NOx pathway (2 products)
c       (6&7) benzene, high-NOx pathway (2 products)
c       (8&9) monoterpenes (2 products)
c     (10&11) isoprene (2 products)
c        (12) sesquiterpenes (1 product)
c
c   Equilibrium partitioning calculations are based on the absorptive
c   partitioning model of Pankow (1994) that was extended by Odum et 
c   al. (1996).  Saturation vapor pressures (cstar) and mass-based 
c   stoichiometric yield coefficients (alpha) are obtained from smog-
c   chamber studies.  Saturation vapor pressures are modified as a 
c   function of temperature using eqn 6 of Sheehan & Bowman (2001).
c  
c   If the pre-existing organic aerosol concentration is zero,
c   gas/particle equilibrium is established only after the organic gas 
c   concentration reaches the threshold value defined in eqn 9 of 
c   Schell et al. (2001).  Until this threshold value is reached, 
c   organic vapors do not partition to the particle phase.  Once the 
c   organic gas/particle equilibrium has been established, gas and 
c   particle-phase concentrations of each condensible species are
c   calculated iteratively using a globally convergent variation of
c   Newton's method (SUBROUTINE NEWT), as described in eqn 8 of Schell
c   et al. (2001).
c
c   In addition to the various pathways of semi-volatile SOA formation
c   treated in previous versions of the model, four types of non-
c   volatile SOA are considered here:
c     (1) enhancement of isoprene-derived SOA under acidic conditions
c     (2) aromatic-derived SOA under low-NOx conditions
c     (3) oligomerization of all particle-phase semi-volatile material
c     (4) SOA formed by in-cloud oxidation  (SUBROUTINE AQCHEM)
c
c  KEY SUBROUTINES/FUNCTIONS CALLED:  NEWT
c
c  REVISION HISTORY:
c     coded August 1, 2001 by Dr. Francis S. Binkowski
c
c     Revised April 4, 2003 by Gerald Gipson to allow for evaporation
c     of organics from aerosols. Now total vapor + aerosol phase is
c     repartitioned at each time step and totorgsw ( Mo ) does not
c     include oldsoa.
c
c     Revised July 14, 2003 by Dr. Prakash V. Bhave
c     - changed cstar(2,3) from 10.103 & 90.925 to 111.11 & 1000.0
c       because smog chamber data of Kalberer et al. were collected
c       at 298 K (not 310 K, as was previously assumed)
c     - changed mw_vap(9,10) from 184 g/mol to 177 g/mol, to be
c       consistent with mwsoa_b
c     - modified threshold criteria for establishing gas/particle 
c       equilibrium by removing the loose criterion involving "mtot"
c     - changed variable names to reflect that the combined vapor +
c       aerosol concentrations are now being repartitioned during
c       each time step (not just the newly formed SVOC's)
c     - added documentation and removed extraneous lines of code
c
c     Revised December 4, 2003 by Dr. Francis S. Binkowski
c     - output variables ORGRATE and ORGBRATE removed and replaced
c       by SOA_A and SOA_B, the newly equilibrated values of
c       Anthropogenic and Biogenic SOA, respectively.  These are non-
c       negative values.
c     - variable jj also removed
c
c     Revised January 8, 2004 by Dr. Prakash V. Bhave
c     - removed the output variable YIELD.  It has no physical meaning
c       after the 12/04/2003 revisions.
c
c     Revised January 12, 2004 by Dr. Chris G. Nolte
c     - for computational efficiency, modified the initial caer guess
c       used as input to NEWT.  If NEWT returns check .eq. true, then
c       NEWT is called again with a guess of caer = 0.5*ctot
c     - removed ITS parameter from NEWT call vector
c     - fixed bug where concentrations less than TOLMIN (i.e., 1.0E-12)
c       were reset to 1.0e-30
c     - removed extraneous code related to "Pandis method" of SVOC
c       partitioning when threshold criterion is not met (i.e., 
c       insufficient organic matter to establish gas/particle 
c       equilibrium)  ** results unaffected by this change
c
c     Revised September 7, 2007 by Dr. Sergey L. Napelenok
c     - Replaced old SOA species (SOA_A, SOA_B) with an array of
c       precursor-specific SOA species.  Replaced OLDSOA_A and OLDSOA_B
c       with an array (OLDSOA).  Updated call vector accordingly.
c     - Deleted nole* and nbio* variables (now obsolete)
c     - Increased the dimension of several arrays to accommodate new
c       SOA precursors (benzene, sesquiterpenes) and pathways (low-NOx,
c       acid-catalyzed, oligomers, in-cloud)
c
c     Revised November 29, 2007 by Dr. Prakash V. Bhave
c     - Renamed subroutine from ORGAER3 to ORGAER5
c     - Modified M2 and M3 calculations to account for the updated
c       definition of DRY aerosol (which now includes non-volatile SOA)
c     - Updated Hvap and corresponding cstar values
c     - Added parameters for SOA from isoprene and sesquiterpenes
c     - Updated aromatic SOA scheme to include semi-volatile and non-
c       volatile products that form under high-NOx and low-NOx 
c       conditions, respectively
c     - Added oligomerization process
c     - Added enhancement of isoprene SOA under acidic conditions
c
c     Revised June 2, 2008 by Dr. Prakash V. Bhave
c     - Changed h_vap of benzene SOA to match that of toluene SOA, based
c       on consultation with Dr. Ed Edney and Dr. Tad Kleindienst.
c
c     Revised June 5, 2008 by Drs. Prakash Bhave and Sergey Napelenok
c     - Simplified the code for conserving low-volatility isoprene
c       oxidation products and removed a minor bug in the acid-induced
c       isoprene SOA calculation.
c
c     Revised September 9, 2008 by Dr. Prakash V. Bhave
c     - Increased alpha values for SV_TRP1, SV_TRP2, and SV_SQT by a
c       factor of 1.3 to correct for the implicit assumption of unit 
c       density in those SOA yield parameters.
c     - Reduced SOA/SOC ratio of AISO1 and AISO2 from 2.5 to 1.6, and
c       increased SOA/SOC ratio of AISO3 from 2.5 to 2.7.  Accordingly, 
c       the molar masses of AISO1 and AISO2 were decreased to 96 g/mol 
c       and the molar mass of AISO3 was increased to 162.
c
c  REFERENCES:
c   1. Edney, E.O., T.E. Kleindienst, M. Lewandowski, and J.H. 
c      Offenberg, Updated SOA chemical mechanism for the Community 
c      Multi-Scale Air Quality model, EPA 600/X-07/025, U.S. EPA, 
c      Research Triangle Park, NC, 2007.
c
c   2. Pankow, J. F., An absorption model of gas/particle partitioning
c      of organic compounds in the atmosphere, Atmos. Environ., Vol 28, 
c      No 2, 185-188, 1994.
c
c   3. Odum, J. R., T. Hoffmann, F. Bowman, D. Collins, R. C. Flagan,
c      and J. H. Seinfeld, Gas/particle partitioning and secondary
c      organic aerosol yields, Environ. Sci. Technol., Vol 30, No 8, 
c      2580-2585, 1996.
c
c   4. Sheehan, P. E. and F. M. Bowman, Estimated effects of temperature
c      on secondary organic aerosol concentrations, Environ. Sci.
c      Technol., Vol 35, No 11, 2129-2135, 2001.
c
c   5. Schell, B., I. J. Ackermann, H. Hass, F. S. Binkowski, and
c      A. Abel, Modeling the formation of secondary organic aerosol
c      within a comprehensive air quality modeling system, J. Geophys.
c      Res., Vol 106, No D22, 28275-28293, 2001.
c
c   6. Strader, R., F. Lurmann, and S. N. Pandis, Evaluation of  
c      secondary organic aerosol formation in winter, Atmos. Environ.,
c      Vol 33, 4849-4863, 1999.
c
c   7. Ng, N. L., J. H. Kroll, A. W. H. Chan, P. S. Chhabra, R. C. 
c      Flagan, and J. H. Seinfeld, Secondary organic aerosol formation
c      from m-xylene, toluene, and benzene, Atmos. Chem. Phys., Vol 7,
c      3909-3922, 2007a.
c
c   8. Griffin, R. J., D. R. Cocker III, R. C. Flagan, and J. H. 
c      Seinfeld, Organic aerosol formation from the oxidation of 
c      biogenic hydrocarbons, J. Geophys. Res., Vol 104, No D3, 
c      3555-3567, 1999.
c
c   9. Bian, F. and F. M. Bowman, Theoretical method for lumping 
c      multicomponent secondary organic aerosol mixtures, Environ.
c      Sci. Technol., Vol 36, No 11, 2491-2497, 2002.
c
c  10. Offenberg, J. H., T. E. Kleindienst, M. Jaoui, M. Lewandowski, 
c      and E. O. Edney, Thermal properties of secondary organic 
c      aerosols, Geophys. Res. Lett., Vol 33, L03816, doi:10.1029/
c      2005GL024623, 2006.
c
c  11. Bahreini, R., M. D. Keywood, N. L. Ng, V. Varutbangkul, S. Gao,
c      R. C. Flagan, J. H. Seinfeld, D. R. Worsnop, and J. L. Jimenez,
c      Measurements of secondary organic aerosol from oxidation of
c      cycloalkenes, terpenes, and m-xylene using an Aerodyne aerosol 
c      mass spectrometer, Environ. Sci. Technol., Vol 39, 5674-5688,
c      2005.
c
c  12. Alfarra, M. R., D. Paulsen, M. Gysel, A. A. Gaforth, J. Dommen, 
c      A. S. H. Prevot, D. R. Worsnop, U. Baltensperger, and H. Coe,
c      A mass spectrometric study of secondary organic aerosols formed
c      from the photooxidation of anthropogenic and biogenic precursors
c      in a reaction chamber, Atmos. Chem. Phys., Vol 6, 5279-5293, 
c      2006.
c
c  13. Ng, N. L., P. S. Chhabra, A. W. H. Chan, J. D. Surratt, J. H. 
c      Kroll, A. J. Kwan, D. C. McCabe, P. O. Wennberg, A. Sorooshian,
c      S. M. Murphy, N. F. Dalleska, R. C. Flagan, and J. H. Seinfeld, 
c      Effect of NOx level on secondary organic aerosol (SOA) formation
c      from the photooxidation of terpenes, Atmos. Chem. Phys., Vol 7,
c      5159-5174, 2007b.
c
c  14. Kostenidou, E., R. K. Pathak, and S. N. Pandis, An algorithm for 
c      the calculation of secondary organic aerosol density combining 
c      AMS and SMPS data, Aerosol Sci. Technol., Vol 41, 1002-1010, 
c      2007.
c
c  15. Offenberg, J. H., C. W. Lewis, M. Lewandowski, M. Jaoui, T. E. 
c      Kleindienst, and E. O. Edney, Contributions of toluene and
c      alpha-pinene to SOA formed in an irradiated toluene/alpha-pinene/
c      NOx/air mixture: comparison of results using 14C content and SOA 
c      organic tracer methods, Environ. Sci. Technol., Vol 41, 3972-
c      3976, 2007.
c
c  16. Henze, D. K. and J. H. Seinfeld, Global secondary organic aerosol
c      from isoprene oxidation, Geophys. Res. Lett., Vol 33, L09812, 
c      doi:10.1029/2006GL025976, 2006.
c
c  17. Kleindienst, T. E., M. Jaoui, M. Lewandowski, J. H. Offenberg, 
c      C. W. Lewis, P. V. Bhave, and E. O. Edney, Estimates of the 
c      contributions of biogenic and anthropogenic hydrocarbons to 
c      secondary organic aerosol at a southeastern US location, Atmos.
c      Environ., Vol 41, 8288-8300, 2007.
c
c  18. Kalberer, M., D. Paulsen, M. Sax, M. Steinbacher, J. Dommen, 
c      A. S. H. Prevot, R. Fisseha, E. Weingartner, V. Frankevich,
c      R. Zenobi, and U. Baltensperger, Identification of polymers as
c      major components of atmospheric organic aerosols, Science, Vol
c      303, 1659-1662, 2004.
c
c  19. Turpin, B. J. and H.-J. Lim, Species contributions to PM2.5 mass
c      concentrations: revisiting common assumptions for estimating 
c      organic mass, Aero. Sci. Technol., Vol 35, 602-610, 2001.
c
c  20. Surratt, J. D., M. Lewandowski, J. H. Offenberg, M. Jaoui, T. E.
c      Kleindienst, E. O. Edney, and J. H. Seinfeld, Effect of acidity
c      on secondary organic aerosol formation from isoprene, Environ.
c      Sci. Technol., Vol 41, 5363-5369, 2007.

       subroutine ORGAER5(DT, NSPCSDA, CBLK, NPSPCS, ORGPROD, 
     &                    AIRTEMP, AIRPRS, LAYER, LOGDEV )

       use soa_NEWT      ! module containing all information and 
                         ! subroutines used in SUBROUTINE NEWT
       USE AERO_INFO     ! Module containing CBLK indices and 
                         ! several constants
       implicit none


c     Input variables

       REAL DT               ! Synchronization time step [ s ]
       INTEGER NSPCSDA       ! number of species in CBLK
       REAL CBLK( NSPCSDA  ) ! main array of variables (input & output)
       integer NPSPCS        ! number of ROG reaction counter species
       real ORGPROD(NPSPCS)  ! change in precursor mixing ratio [ ppm ]
       real AIRTEMP          ! air temperature [ K ]
       real AIRPRS           ! air pressure [ Pa ]
       integer LAYER         ! model layer number
       integer LOGDEV        ! unit number for log file


c     Internal variables

       logical first_time
        data first_time / .true. /
        save first_time
       integer ii    ! loop index


c  GAS/PARTICLE PARTITIONING PARAMETERS (alpha, cstar, h_vap)
c
c   The mass-based stoichiometric coefficient (alpha) for long alkanes 
c   is obtained from an estimate tabulated by Strader et al. (1999) for
c   the AAR4 model species and converted from ppm units by applying
c   the molecular weight of octane (114 g/mol).  The effective 
c   saturation concentration (cstar) for long alkanes is also obtained 
c   from Strader et al.  Since the reference temperature for that value 
c   is 281.5 K, we adjust it to 298 K using the method of Sheehan and 
c   Bowman (2001).  In this conversion process and in all subsequent 
c   model calculations, we assume a 40 kJ/mol enthalpy of vaporization
c   (h_vap) for alkane products because no lab measurements of this 
c   quantity are available currently.  In future code updates, Strader's
c   estimates will be replaced with parameters derived from recent
c   chamber studies.
c
c   The alpha values for aromatic products are from Table 6 by Ng et al.
c   (2007a).  They each are divided by a stoichiometric coefficient for
c   peroxy radical products taken from the SAPRC99 mechanism (0.804, 
c   0.765, and 0.764, for low-yield aromatics, high-yield aromatics, 
c   and benzene, respectively) in order to recover the chamber-based
c   yields from the gas-mechanism-derived concentrations of aromatic
c   peroxy radicals.  In future code updates, we could simplify this by
c   setting the stoichiometric coefficient for aromatic peroxy radicals 
c   to unity so that no adjustment is needed here.  Because these alpha
c   values are ultimately multiplied by ORGPROD in units associated with
c   the parent ROG (and not the aromatic peroxy radical), a further
c   adjustment of alpha values by the MW_ROG/MW_RO2 ratio is avoided
c   here.
c
c   The effective saturation concentrations (cstar) of all aromatic SOA
c   products are approximated as the reciprocal of the partitioning
c   coefficients (Kom) in Table 6 by Ng et al. (2007a).  We assume that
c   the Kom values tabulated in that paper are reasonably representative
c   of conditions at 298 K, because the chamber experiments were 
c   initiated at 293 K and lights reportedly warmed the chamber by ~5 
c   degrees during the course of each experiment.  The h_vap values of
c   aromatic SOA are obtained from unpublished measurements by Dr. John 
c   Offenberg (Dec. 3, 2007) and recommendations of Edney et al. (2007).
c
c   The monoterpene partitioning parameters are obtained from a weighted
c   average of 5 sets of smog chamber experiments reported in Table 3 by 
c   Griffin et al. (1999).  The emissions-based weighting factors and 
c   Griffin's smog chamber-based partitioning parameters are:
c      Compound     wght  alpha1   Kom1   alpha2   Kom2
c     ----------    ----  ------  ------  ------  ------
c      a-pinene     0.4    .038    .171    .326   .0040
c      b-pinene     0.25   .13     .044    .406   .0049
c      d3-carene    0.15   .054    .043    .517   .0042
c      sabinene     0.1    .067    .258    .399   .0038
c      limonene     0.1    .239    .055    .363   .0053
c   A smog chamber temperature of 313 K is assumed for all monoterpene
c   experiments and the Kom values are adjusted to 298 K accordingly.
c   The monoterpene parameter averaging follows eqn's 8 and 10 of Bian
c   and Bowman (2002), except the alpha values in those equations are 
c   first multiplied by the weighting factors listed above to account
c   for the relative abundances of each monoterpene.  In all 
c   calculations of cstar for monoterpenes, an h_vap value of 40 kJ/mol
c   is selected from within the range of measurements by Offenberg et 
c   al. (2006).  The alpha values are further multiplied by 1.3 to
c   remove the implicit assumption of unit density in the parameters
c   reported by Griffin et al. (1999).  A density of 1.3 g/cc for 
c   monoterpene SOA is appropriate based on the recent papers by 
c   Bahreini et al. (2005), Alfarra et al. (2006), Ng et al. (2007b), 
c   Kostenidou et al. (2007), and Offenberg et al. (2007).
c
c   The alpha and cstar values for isoprene are from Table 1 by Henze
c   and Seinfeld (2006).  Sesquiterpene parameters are taken from Table
c   3 by Griffin et al. (1999), but the alpha values are multiplied by
c   1.3 based on the measurements of sesquiterpene SOA density made by
c   Bahreini et al. (2005) and Ng et al. (2007b).  Tabulated Kom values 
c   for a-humulene and b-caryophyllene are averaged using 50:50 
c   weighting factors and the methodology of Bian and Bowman (2002) to 
c   obtain a single cstar value for all sesquiterpenes.  The h_vap 
c   values for SOA from isoprene and sesquiterpenes are assumed equal 
c   to that for monoterpenes, due to a lack of experimental data.

       real alpha(NCVAP)  ! mass-based stoichiometric coefficients
                          ! [ ug / m **3 ] / [ ug / m**3 ]
        data alpha / 0.0718,           ! SV_ALK
     &               0.0386, 0.1119,   ! SV_XYL1, SV_XYL2
     &               0.0758, 0.1477,   ! SV_TOL1, SV_TOL2
     &               0.0942, 1.162,    ! SV_BNZ1, SV_BNZ2
     &               0.1123, 0.5013,   ! SV_TRP1, SV_TRP2
     &               0.232, 0.0288,    ! SV_ISO1, SV_ISO2
     &               1.3 /             ! SV_SQT

       real cstar(NCVAP)  ! effective saturation concentrations
                          ! of SVOC's [ ug / m**3 ] at 298 K
        data cstar / 0.020,                ! SV_ALK
     &               1.314, 34.483,        ! SV_XYL1, SV_XYL2
     &               2.326, 21.277,        ! SV_TOL1, SV_TOL2
     &               0.302, 111.11,        ! SV_BNZ1, SV_BNZ2
     &               7.466, 110.77,        ! SV_TRP1, SV_TRP2
     &               116.01, 0.617,        ! SV_ISO1, SV_ISO2
     &               12.193 /              ! SV_SQT

       real h_vap(NCVAP) ! enthalpy of vaporization [ J / mol ]
        data h_vap / 40.0e3,               ! SV_ALK
     &               32.0e3, 32.0e3,       ! SV_XYL1, SV_XYL2
     &               18.0e3, 18.0e3,       ! SV_TOL1, SV_TOL2
     &               18.0e3, 18.0e3,       ! SV_BNZ1, SV_BNZ2
     &               40.0e3, 40.0e3,       ! SV_TRP1, SV_TRP2
     &               40.0e3, 40.0e3,       ! SV_ISO1, SV_ISO2
     &               40.0e3 /              ! SV_SQT


c  NON-VOLATILE SOA PARAMETERS (alphaH, kolig, olgrat, kacid)
c
c   Under low-NOx conditions, aromatic peroxy radicals may react 
c   preferentially with HO2 (instead of NO) to produce non-volatile
c   aromatic SOA.  Yield coefficients (alphaH) are obtained from 
c   Table 6 by Ng et al. (2007a).  As with the alpha values for semi-
c   volatile aromatic SOA aromatic described above, Ng's values
c   each are divided by a stoichiometric coefficient for peroxy 
c   radical products taken from the SAPRC99 mechanism to recover the 
c   chamber-based yields from the gas-mechanism-derived concentrations 
c   of aromatic peroxy radicals.
c
c   To simulate condensed-phase reactions that produce low-volatility 
c   products such as oligomers, all semi-volatile SOA species in the
c   model are converted to non-volatile products by a zeroth order
c   rate (kolig).  This rate corresponds to a 20-hour half life, which 
c   is based on the measurements of Kalberer et al. (2004).  The 
c   SOA/SOC ratio of the oligomer products (olgrat) is set equal to the
c   OM/OC ratio recommended by Turpin & Lim (2001) for non-urban areas.
c
c   In an acidic aerosol, SOA from isoprene is enhanced relative to the
c   amount formed on acid-neutral particles.  The enhancement factor
c   (kacid) is computed from Figure 1 by Surratt et al. (2007) by 
c   normalizing the fitted slope (0.0389) by the intercept term (10.733)
c   shown in that figure.  Multiplying kacid by the air concentration of
c   particle-phase hydrogen ion [nmol/m3] yields the mass concentration
c   by which 1ug/m3 of semi-volatile isoprene-derived SOA would be 
c   increased due to particle acidity.

       real alphaH(3)     ! stoichiometric coefficients for non-volatile
                          ! aromatic SOA [ ug / m **3 ] / [ ug / m**3 ]
        data alphaH / 0.373,           ! AXYL3
     &                0.471,           ! ATOL3
     &                0.484 /          ! ABNZ3

       real kolig         ! oligomerization rate [ 1/s ]
        parameter( kolig = 0.69314718 / 72000.0 )  ! 20h half-life

       real olgrat        ! SOA/SOC ratio for oligomers
        parameter( olgrat = 2.1 )

       real kacid         ! acid-induced enhancement factor
        parameter( kacid = 0.00361 )


c  MOLECULAR WEIGHTS (mw_rog, mw_vap, mwpoa)
c
c   In this subroutine, molecular weights are hard-coded to match values
c   in the mechanism include files released with the CMAQ model.  In 
c   future code updates, all molecular weights should be inherited from
c   the include files to avoid hard-coded values.
c
c   The molecular weights of reactive organic gases (ROG) are set based
c   on the chemical formulas of octane, xylene, toluene, benzene, alpha-
c   pinene, isoprene, and beta-caryophyllene.
c
c   Molecular weights of SVOC species are estimated by muliplying the
c   carbon mass in each parent ROG by an SOA/SOC ratio.  The ratio for
c   alkane SOA is decided arbitrarily due to lack of experimental data.
c   The other SOA/SOC ratios are obtained from Table 3 by Kleindienst
c   et al. (2007).
c        (1) assume parent alkane contains 8 carbons & SOA/SOC = 1.5625
c      (2&3) xylenes contain 8 carbon atoms, SOA/SOC = 2.0
c      (4&5) toluene contains 7 carbon atoms, SOA/SOC = 2.0
c      (6&7) benzene contains 6 carbon atoms, SOA/SOC = 2.0
c      (8&9) monoterpenes contain 10 carbon atoms, SOA/SOC = 1.4
c    (10&11) isoprene contains 5 carbon atoms, SOA/SOC = 1.6
c       (12) sesquiterpenes contain 15 carbon atoms, SOA/SOC = 2.1
c
c   POA molecular weight is set to 220 g/mol, similar to a C15 compound

       real mw_rog(nprec) ! Molecular weight of reactive organic gases
                          ! that are SOA precursors [ g / mol ]
        data mw_rog / 114.0, 106.0, 106.0, 92.0, 92.0, 
     &                78.0, 78.0, 136.0, 68.0, 204.0 /

       real mw_vap(NCVAP)    ! Molecular weights of SVOCs [ g / mol ]
        data mw_vap / 150.0, 192.0, 192.0, 168.0, 168.0, 144.0, 144.0, 
     &                168.0, 168.0,  96.0,  96.0, 378.0 /

       real mwpoa            ! Molecular weight of POA [ g / mol ]
        parameter( mwpoa = 220.0 )

       real mw_vap_m1(NCVAP) ! Inverse MW of SVOCs [ mol / g ]
        save mw_vap_m1

       real drog_ppm2ug(nprec) ! [ ppm per ug/m3 ] for ORGPROD at
        save drog_ppm2ug       ! reference temperature and pressure


c     Parameters & variables for adjusting cstar to ambient conditions

       real tref          ! reference temperature
        parameter( tref = 298.0 ) ! [ K ]
       real trefm1        ! inverse of reference temperature
        parameter( trefm1 = 1.0 / tref )
       real prefm1        ! inverse of reference pressure
        parameter( prefm1 = 1.0 / P0 )
       real rgas1         ! reciprocal of universal gas constant
        parameter( rgas1 = 1.0 /  RGASUNIV )

       real convfac_298    ! P/ RT at 1 atm and 298 K [ mole / m ** 3 ]
        parameter( convfac_298 = STDATMPA * rgas1 * trefm1 )
       real convfac
       real tt1,tt2       ! temperature-related factors
       real tempcorr      ! temperature correction factor for cstar

c     Variables used in oligomerization calculations

       real expdt         ! non-dimensional loss coefficient
       real nsvpa         ! particle-phase anthropogenic SVOC [umolC/m3]
       real nsvpb         ! particle-phase biogenic SVOC [umolC/m3]

c     Variables used in acid-enhanced isoprene SOA calculations

       real hplus         ! accumulation-mode H+ conc [nmol/m3]
       real aiso12        ! particle-phase isoprene SVOC [ug/m3]
       real vviso         ! vapor-phase isoprene SVOC [ug/m3]
       real xiso3         ! newly produced AISO3J [ug/m3]
       real isofrac       ! ratio for depletion of vapor-phase products

c     Variables used in equilibrium partitioning calculations

       real drog(nprec)   ! change in precursor conc [ug/m3]
       real totrog(NCVAP) ! drog conc mapped to each SVOC [ug/m3]
       real c0(NCVAP)     ! cstar at AIRTEMP [ug/m3]
       real ctoti(NCVAP)  ! SVOC conc before current time step [ug/m3]
       real prod(NCVAP)   ! SVOC generated during current step [ug/m3]
       real ctotf(NCVAP)  ! SVOC conc after current time step [ug/m3]
       real caer(NCVAP)   ! SVOC conc in aerosol phase [ug/m3]
       real totorgsw      ! POA + non-volatile SOA [umole/m3]
       real totorg        ! SOA + POA before time step [umole/m3]
       real threshold     ! criterion for establishing gas/part equil.
       real threshmin     ! small positive number
        parameter( threshmin = 1.0 e-19 )
       real conmin        ! concentration lower limit
        parameter ( conmin = 1.0e-30 )
       real ctolmin
        parameter ( ctolmin = 1.E-06 )
       logical check      ! flag to indicate if NEWT subroutine
                          !  converged to a spurious root

c     Variables for updating 2nd and 3rd moments

       real old_m3  ! initial 3rd moment minus nonvol SOA [mom/m3]
       real old_m2  ! initial 2nd moment minus nonvol SOA [mom/m3]
       real new_m3  ! final 3rd moment with updated SOA [mom/m3]
       real new_m2  ! final 2nd moment with updated SOA [mom/m3]

c ---------------------------------------------------------------------

       if ( first_time )  then

C *** Set unit conversion and inverse mw constants

         do ii = 1, NPSPCS
            drog_ppm2ug(ii) =  mw_rog(ii) * convfac_298
         end do

         do ii = 1, NCVAP
            mw_vap_m1(ii) = 1.0 / mw_vap(ii)
         end do

         first_time = .false.

       end if ! first_time

c ---------------------------------------------------------------------

c *** Begin solution code

c *** compute 3rd moment, 2nd moment, and Dg without nonvolatile SOA.
c     cloud-produced SOA (i.e., orgcj) is not subtracted here because
c     it is unchanged in this subroutine
       old_m3 = cblk( vac3 ) - orgfac *
     &                         ( cblk( vxyl3j ) 
     &                         + cblk( vtol3j ) 
     &                         + cblk( vbnz3j ) 
     &                         + cblk( viso3j ) 
     &                         + cblk( volgaj ) 
     &                         + cblk( volgbj ) )
       old_m2 = cblk( vac2 ) * ( old_m3 / cblk( vac3 ) ) ** two3
       cblk( vdgac ) = cblk( vdgac ) * sqrt( old_m2 / cblk( vac2 ) )

c *** set temperature factors

       tt1 = tref / AIRTEMP
       tt2 = trefm1 - 1.0 / AIRTEMP
       convfac = tt1 * AIRPRS * prefm1

c *** initialize drog from ORGPROD and change units to [ ug / m**3 ]

       do ii = 1, NPSPCS
         drog(ii) = ORGPROD(ii) * drog_ppm2ug(ii) * convfac
       end do

c *** explicit assignment of drog to totrog

       totrog( 1) = drog( 1) ! alkane
       totrog( 2) = drog( 2) ! xylene_1
       totrog( 3) = drog( 2) ! xylene_2
       totrog( 4) = drog( 4) ! toluene_1
       totrog( 5) = drog( 4) ! toluene_2
       totrog( 6) = drog( 6) ! benzene_1
       totrog( 7) = drog( 6) ! benzene_2
       totrog( 8) = drog( 8) ! monoterpene_1
       totrog( 9) = drog( 8) ! monoterpene_2
       totrog(10) = drog( 9) ! isoprene_1
       totrog(11) = drog( 9) ! isoprene_2
       totrog(12) = drog(10) ! sesquiterpene

c *** transfer non-volatile products directly to CBLK array

       cblk( vxyl3j ) = cblk( vxyl3j ) + alphaH(1) * drog( 3)
       cblk( vtol3j ) = cblk( vtol3j ) + alphaH(2) * drog( 5)
       cblk( vbnz3j ) = cblk( vbnz3j ) + alphaH(3) * drog( 7)


c *** OLIGOMERIZATION
c
c     Convert semi-volatile SOA to non-volatile oligomers by an
c     exponential decay process that conserves carbon mass.

       expdt = exp( - kolig * dt )
       nsvpa = cblk( valkj  ) * mw_vap_m1(1)  *  8.0
     &       + cblk( vxyl1j ) * mw_vap_m1(2)  *  8.0
     &       + cblk( vxyl2j ) * mw_vap_m1(3)  *  8.0
     &       + cblk( vtol1j ) * mw_vap_m1(4)  *  7.0
     &       + cblk( vtol2j ) * mw_vap_m1(5)  *  7.0
     &       + cblk( vbnz1j ) * mw_vap_m1(6)  *  6.0
     &       + cblk( vbnz2j ) * mw_vap_m1(7)  *  6.0
       nsvpb = cblk( vtrp1j ) * mw_vap_m1(8)  * 10.0
     &       + cblk( vtrp2j ) * mw_vap_m1(9)  * 10.0
     &       + cblk( viso1j ) * mw_vap_m1(10) *  5.0
     &       + cblk( viso2j ) * mw_vap_m1(11) *  5.0
     &       + cblk( vsqtj  ) * mw_vap_m1(12) * 15.0

       cblk( valkj  ) = cblk( valkj  ) * expdt
       cblk( vxyl1j ) = cblk( vxyl1j ) * expdt
       cblk( vxyl2j ) = cblk( vxyl2j ) * expdt
       cblk( vtol1j ) = cblk( vtol1j ) * expdt
       cblk( vtol2j ) = cblk( vtol2j ) * expdt
       cblk( vbnz1j ) = cblk( vbnz1j ) * expdt
       cblk( vbnz2j ) = cblk( vbnz2j ) * expdt
       cblk( vtrp1j ) = cblk( vtrp1j ) * expdt
       cblk( vtrp2j ) = cblk( vtrp2j ) * expdt
       cblk( viso1j ) = cblk( viso1j ) * expdt
       cblk( viso2j ) = cblk( viso2j ) * expdt
       cblk( vsqtj  ) = cblk( vsqtj  ) * expdt

       cblk( volgaj ) = cblk( volgaj )
     &                + 12.0 * nsvpa * ( 1.0 - expdt ) * olgrat
       cblk( volgbj ) = cblk( volgbj )
     &                + 12.0 * nsvpb * ( 1.0 - expdt ) * olgrat

c *** compute molar concentrations of non-volatile organic material
c     and total organic material; in future code updates, molecular
c     weights of non-volatile SOA species should be inherited from
c     the include files to avoid hard-coded values.

       totorgsw = ( cblk( vorgpai ) + cblk( vorgpaj ) ) / mwpoa
     &            + cblk( vxyl3j ) / 192.0
     &            + cblk( vtol3j ) / 168.0
     &            + cblk( vbnz3j ) / 144.0
     &            + cblk( viso3j ) / 162.0
     &            + cblk( volgaj ) / 176.4
     &            + cblk( volgbj ) / 252.0
     &            + cblk( vorgcj ) / 177.0

       totorg   = totorgsw 
     &            + cblk( valkj  ) * mw_vap_m1(1)
     &            + cblk( vxyl1j ) * mw_vap_m1(2)
     &            + cblk( vxyl2j ) * mw_vap_m1(3)
     &            + cblk( vtol1j ) * mw_vap_m1(4)
     &            + cblk( vtol2j ) * mw_vap_m1(5)
     &            + cblk( vbnz1j ) * mw_vap_m1(6)
     &            + cblk( vbnz2j ) * mw_vap_m1(7)
     &            + cblk( vtrp1j ) * mw_vap_m1(8)
     &            + cblk( vtrp2j ) * mw_vap_m1(9)
     &            + cblk( viso1j ) * mw_vap_m1(10)
     &            + cblk( viso2j ) * mw_vap_m1(11)
     &            + cblk( vsqtj  ) * mw_vap_m1(12)

c *** initialize ctoti as sum of vapor-phase and particle-phase SVOCs
c     note: all of these CBLK species are in [ug/m**3]

       ctoti( 1) = cblk( vvalk  ) + cblk( valkj  )
       ctoti( 2) = cblk( vvxyl1 ) + cblk( vxyl1j )
       ctoti( 3) = cblk( vvxyl2 ) + cblk( vxyl2j )
       ctoti( 4) = cblk( vvtol1 ) + cblk( vtol1j )
       ctoti( 5) = cblk( vvtol2 ) + cblk( vtol2j )
       ctoti( 6) = cblk( vvbnz1 ) + cblk( vbnz1j )
       ctoti( 7) = cblk( vvbnz2 ) + cblk( vbnz2j )
       ctoti( 8) = cblk( vvtrp1 ) + cblk( vtrp1j )
       ctoti( 9) = cblk( vvtrp2 ) + cblk( vtrp2j )
       ctoti(10) = cblk( vviso1 ) + cblk( viso1j )
       ctoti(11) = cblk( vviso2 ) + cblk( viso2j )
       ctoti(12) = cblk( vvsqt  ) + cblk( vsqtj  )

c *** EQUILIBRIUM PARTITIONING CALCULATIONS

c *** Initial guess of caer is computed as follows:
c     From eqn (8) of Schell et al. (2001)
c       caer = ctotf - c0 * (caer/MW) / totorg
c     Assuming totorg doesn't change during the timestep,
c       caer * (1 + c0/MW / totorg) = ctotf
c       caer = ctotf / ( 1 + c0/MW / totorg)

       threshold = 0.0
       do ii = 1, NCVAP
         tempcorr   = tt1 * exp( h_vap(ii) * rgas1 * tt2 )
         c0(ii)     = cstar(ii) * tempcorr
         prod(ii)   = alpha(ii) * totrog(ii)
         ctotf(ii)  = ctoti(ii) + prod(ii)
         threshold  = threshold +  ctotf(ii) / c0(ii)
         caer(ii) = ctotf(ii) * totorg /            ! Initial
     &             (totorg + c0(ii)*mw_vap_m1(ii))  !  guess
       end do

c *** check if gas/particle equilibrium can be established
       if ( (threshold .gt. 1.0) .or. (totorgsw .gt. threshmin) ) then

c *** calculate new SOA by partitioning. This method uses a globally
c     convergent Newton-Raphson method coded by Dr Benedikt Schell
c     to solve the nonlinear quadratic system shown in eqn 8 of 
c     Schell et al:
c        A(i)  * caer(i) ** 2 + B * caer(i) + C(i) = 0.0,
c        where B(i) contains the sum of all caer(j),
c        for j not equal to i.

         call NEWT( LAYER, caer, NCVAP, check,
     &              ctotf, c0, mw_vap_m1, totorgsw )
         if( check ) then
c  Try again with initial guess of 50/50 gas/aerosol split.
           do ii = 1, NCVAP
             caer(ii) = 0.5 * ctotf(ii)
           end do
           call NEWT( LAYER, caer, NCVAP, check,
     &                 ctotf, c0, mw_vap_m1, totorgsw )
           if (check) then                           
             write(LOGDEV,*) ' problem in NEWT at LAYER = ', LAYER
           end if            
         end if

c *** Constrain caer to values between conmin and ctotf
         do ii = 1, NCVAP
           if (caer(ii) .lt. conmin ) then
            If(caer(ii) .lt. 0.0 ) then
              write(logdev,*) ' caer negative '
            end if
            caer(ii) = conmin
           end if

           if( ( caer(ii) - ctotf(ii) ) .gt. ctolmin ) then
            write(LOGDEV,*) ' ii = ', ii
            write(LOGDEV,*) '  caer(ii)  = ', caer(ii)
            write(LOGDEV,*) '  ctotf(ii) = ', ctotf(ii)
            caer(ii) = ctotf(ii)
           end if
         end do

       else

c *** threshold not exceeded; no material transferred to aerosol phase
         do ii = 1, NCVAP
           caer(ii) = 0.0
         end do

       end if    ! check on equilibrium threshold

c *** transfer particle-phase SOA and vapor-phase SVOCs back to CBLK

       cblk( valkj  ) = caer(1)
       cblk( vxyl1j ) = caer(2)
       cblk( vxyl2j ) = caer(3)
       cblk( vtol1j ) = caer(4)
       cblk( vtol2j ) = caer(5)
       cblk( vbnz1j ) = caer(6)
       cblk( vbnz2j ) = caer(7)
       cblk( vtrp1j ) = caer(8)
       cblk( vtrp2j ) = caer(9)
       cblk( viso1j ) = caer(10)
       cblk( viso2j ) = caer(11)
       cblk( vsqtj  ) = caer(12)
       cblk( vvalk  ) = ctotf( 1) - caer( 1)
       cblk( vvxyl1 ) = ctotf( 2) - caer( 2)
       cblk( vvxyl2 ) = ctotf( 3) - caer( 3) 
       cblk( vvtol1 ) = ctotf( 4) - caer( 4) 
       cblk( vvtol2 ) = ctotf( 5) - caer( 5) 
       cblk( vvbnz1 ) = ctotf( 6) - caer( 6) 
       cblk( vvbnz2 ) = ctotf( 7) - caer( 7) 
       cblk( vvtrp1 ) = ctotf( 8) - caer( 8) 
       cblk( vvtrp2 ) = ctotf( 9) - caer( 9) 
       cblk( vviso1 ) = ctotf(10) - caer(10) 
       cblk( vviso2 ) = ctotf(11) - caer(11) 
       cblk( vvsqt  ) = ctotf(12) - caer(12) 


c *** ACID-INDUCED ISOPRENE SOA

c   Particle-phase acidity is parameterized by the air concentration of
c   hydrogen ion in the particle phase (hplus).  This is computed by 
c   electroneutrality, and is bounded so that it cannot fall below zero
c   (acid-neutral) nor above the range of experimental conditions (530
c   nmol/m3) tested by Surratt et al. (2007).  In future code updates, 
c   molecular weights of inorganic ions should be inherited from include 
c   files to avoid hard-coded values.

       hplus = ( 2.0 * cblk( vso4aj ) / 96.0
     &               + cblk( vno3aj ) / 62.0
     &               + cblk( vclj )   / 35.0
     &               - cblk( vnh4aj ) / 18.0
     &               - cblk( vnaj )   / 23.0 ) * 1000.0  ! nmol/m3
       hplus = min( 530.0, max ( 0.0, hplus ) ) ! restrict extrapolation

c   Compute amount of acid-enhanced isoprene SOA that is produced
c   during the current time step (xiso3) using the normalized 
c   expression derived from Surratt et al. (2007).

       aiso12 = cblk( viso1j ) + cblk( viso2j )
       xiso3  = kacid * hplus * aiso12 - cblk( viso3j )

c   Update CBLK(VISO3J) while conserving the total concentration of
c   low-volatility isoprene-derived products.  Since the acid-enhanced
c   product is assumed to be non-volatile, only positive values of 
c   xiso3 are considered below.  Also, xiso3 is not allowed to exceed 
c   the vapor-phase concentration of isoprene SVOC.  We assume the 
c   xiso3 mass is depleted from the 2 vapor-phase isoprene products
c   in quantities proportional to their equilibrium concentrations.
c   The factor of 2.7/1.6 accounts for the enhancement in the OM/OC
c   ratio when isoprene SOA is formed in the presence of SO2, based 
c   on the lab experiments of Kleindienst et al. (2007).
 
       if ( xiso3 .gt. 0.0 ) then
         vviso = cblk( vviso1 ) + cblk( vviso2 )
         xiso3  = min( xiso3, vviso )
         cblk( viso3j ) = cblk( viso3j ) + xiso3 * (2.7/1.6)
         isofrac = cblk( vviso1 ) / vviso
         cblk( vviso1 ) = cblk( vviso1 ) - isofrac * xiso3
         cblk( vviso2 ) = cblk( vviso2 ) - (1.0 - isofrac) * xiso3
       end if

c *** update 3rd moment, 2nd moment, and Dg in CBLK array by assuming 
c     that SOA condensation/evaporation does not affect the geometric
c     standard deviation
       new_m3 = old_m3 + orgfac *
     &          ( cblk( valkj  ) +
     &            cblk( vxyl1j ) +
     &            cblk( vxyl2j ) +
     &            cblk( vxyl3j ) +
     &            cblk( vtol1j ) +
     &            cblk( vtol2j ) +
     &            cblk( vtol3j ) +
     &            cblk( vbnz1j ) +
     &            cblk( vbnz2j ) +
     &            cblk( vbnz3j ) +
     &            cblk( vtrp1j ) +
     &            cblk( vtrp2j ) +
     &            cblk( viso1j ) +
     &            cblk( viso2j ) +
     &            cblk( viso3j ) +
     &            cblk( vsqtj  ) +
     &            cblk( volgaj ) +
     &            cblk( volgbj ) )
       new_m2 = old_m2 * ( new_m3 / old_m3 ) ** two3
       cblk( vac3 )  = new_m3
       cblk( vac2 )  = new_m2
       cblk( vdgac ) = cblk( vdgac ) * sqrt( new_m2 / old_m2 )      
      
       return
       
       end   subroutine orgaer5
