
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

c  This collection of subroutines is version 5 of the CMAQ aerosol 
c  component (AERO5).  It is based upon the version described by 
c  Binkowski & Roselle (2003), with updated treatment of the sea-salt
c  and SOA species.
c
c //////////////////////////////////////////////////////////////////
c  SUBROUTINE AEROPROC advances the number, second moment, and mass
c   concentrations for each mode over the time interval DT.  Other 
c   than CBLK and ORGPROD, all arguments are scalar.
c 
c  KEY SUBROUTINES CALLED:
c     GETPAR, ORGAER5, HETCHEM, HCOND3, NEWPART3, GETCOAGS,
c     INTERCOAG_GH, INTRACOAG_GH, VOLINORG
c 
c  KEY FUNCTIONS CALLED:  ERF, ERFC, GETAF
c 
c  REVISION HISTORY:
c     Coded in December 1999 by Dr. Francis S. Binkowski
c      Modified from older versions used in CMAQ, eliminated separate
c      routines for coagulation and growth by including these processes
c      in line.  This code is now a scalar code and has no internal
c      spatial arrays.
c 
c FSB 05/17/00  new version of RPMARES included
c 
c FSB 05/30/00  Fixed minor bug in awater.f
c 
c FSB Correction to extinction coefficient in getbext.
c 
c FSB 07/21/00 corrected units on ORGRATES and ORGBRATE_IN from 
c      ppm/min to ppm/sec in AEROPROC and AEROSTEP.
c 
c FSB 11/30/00 following changes from 07/28/00
c     Fixed problem for new emissions file version
c     Combined emissions for M3
c     Used a fixed value of Dpmin for plotting
c     Added variables OMEGA_AT & OMEGA_AC for partitioning
c     Eliminated the restriction on relative humidity for nucleation.
c     Added a branch in EQL for very low relative humidity (<1%).
c 
c FSB Following changes to RPMARES:
c     Number of iterations reduced from 150 to 50.
c     Iterations are used only if 0.5 < = RATIO.
c     In calculating the molality of the bisulfate ion, a
c     MAX(1.0e-10, MSO4 ) is used.
c 
c FSB 08/08/01 Changes to NEWPART to correct mass rate and to AEROSTEP
c     to correct sulfate, include emissions, and trap problem in
c     accumulation mode number calculation.
c 
c FSB 09/19/01 Version AE3, major changes
c     Organics are done with Dr. Benedikt Schell's approach. (ORGAER3)
c     Particle production uses Kulmala approach (NEWPART3)
c     Condensational factors for sulfate and organics are calculated
c      separately.
c     Emissions are assumed to be input in vertical diffusion.
c     Include files replaced by Fortran 90 Modules.
c     The modules also contain subroutines.
c 
c FSB 10/24/01 Added the treatment of gaseous N2O5 -> aerosol HNO3
c 
c FSB 10/25/01 Changed the mass transfer calculation for Aitken to 
c     accumulation mode by coagulation as recommended by Dr. Benedikt
c     Schell.
c 
c SJR 04/24/02 Replaced thermodynamic code RPMARES with ISORROPIA
c     --Shawn J. Roselle
c 
c GLG 04/04/03 Modifications to allow for evaporation of semi-volatile
c     organics from aerosol phase.  --Gerald L. Gipson
c 
c FSB 11/18/03 Corrections to sulfate condensation.  Previously, 
c     SCONDRATE was undefined when SO4RATE=0 and SCONDRATE was 
c     negative when SO4RATE < DMDT_so4.
c 
c PVB 01/08/04 Several changes in preparation for simulation of 2001
c      calendar year --Dr. Prakash V. Bhave
c    -Added interface to new subroutine, GETCOAGS, for calculating 
c      coagulation rates.  GETCOAGS is used instead of Gauss-Hermite
c      quadrature for computational efficiency, by setting
c      FASTCOAG_FLAG = .TRUE.  --PVB
c    -Removed SOA from the definition of "DRY" aerosol.  Aerosol surface
c      area is now transported without SOA.  See notes in GETPAR, AERO,
c      and AERO_DEPV subroutines.  --SJR
c    -Moved EQL3 call from AEROPROC to AEROSTEP, immediately following
c      the ORGAER3 call.  This is a side effect of transporting aerosol 
c      surface area without SOA.  --SJR
c    -New subroutine, HCOND3, to calculate condensation rates for
c      2nd and 3rd moments.  Results are unchanged.  --FSB
c    -Revised method of calculating SOA.  Partition SOA to the modes 
c      in proportion to the amounts of total organic mass (SOA plus 
c      primary) in each mode.  Modal geometric standard deviations are
c      now preserved during SOA condensation and evaporation. --FSB
c    -Combined the former subroutines AEROPROC and AEROSTEP into this
c      subroutine; retained the name AEROPROC.  --PVB
c 
c PVB 09/21/04 added in-line documentation with input from FSB.
c     Changed MWH2SO4 from 98.07354 to 98.0 g/mol for consistency with
c     the mechanism files.
c 
c PVB 09/27/04 removed the IF(XM3.GT.0.0) mode-merging precondition 
c     because it caused significant erroneous mode crossover.  Fix
c     suggested by Dr. Chris Nolte.
c 
c PVB 01/19/05 Added SO4RATE to the EQL3 call vector.  This is necessary
c     to ensure that the gas and inorganic fine PM (i+j) concentrations
c     are in thermodynamic equilibrium at the end of each time step.
c 
c PVB 05/02/05 Modified ERF statement function for negative arguments such 
c     that erf(-x) = -erf(x).  Previous version had erf(-x) = erf(x).
c 
c PVB 04/06/06 Added GAMMA_N2O5 to the AEROPROC and EQL3 call vectors, 
c     so it can be written to the aerosol diagnostic file.
c 
c SLN 09/07/07 Several changes in preparation for new SOA module
c    -Removed Aitken-mode SOA species (CBLK(VORGAI),CBLK(VORGBI)) and 
c     all of the related variables (OMASS_I, OMASS_J, FRACI, FRACJ,
c     OLD_M2_I, OLD_M3_I, NEW_M2_I, NEW_M3_I)
c    -Replaced the other SOA species (CBLK(VORGAJ),CBLK(VORGBJ)) with
c     precursor-specific SOA species (e.g., CBLK(VTOL1J)).
c    -Replaced SOA_A and SOA_B with an array, SOA_ALL.  Replaced 
c     OLDSOA_A and OLDSOA_B with an array, OLDSOA.  Updated ORGAER3
c     call vector accordingly.
c    -Removed dependence of mode-merging criteria on SOA condensation
c     because that logic was flawed.  Deleted all variables needed
c     for that calculation (CHEMRATE_ORG, ORGRATE, ORGBRATE).
c 
c PVB 11/02/07 Moved heterogenous N2O5 chemistry from EQL3 to a new
c     subroutine, HETCHEM.
c 
c PVB 11/29/07 Implementation of new SOA formation mechanisms
c    -Replaced call to ORGAER3 with a call to ORGAER5
c    -Moved CBLK updates of SV species, SOA species, M2, and M3 into
c     ORGAER5 instead of updating those values in AEROPROC
c
c JOY 04/08/08 White space, alignment, readability
c
c JTK 04/17/08 Implemented coarse chemistry updates
c     -replaced condensation calculations with call to VOLINORG
c     -added code for coarse surface area and variable crse std. dev.
c     -modified modal dynamics equations because new particle formation
c      and growth are now calculated in VOLINORG
c  
c JOY 12/07/08 Removed unused EQL3 code, add column and row arguments to
c     VOLINORG for diagnostic logging
c
c  REFERENCES:
c   1. Binkowski, F.S. and U. Shankar, The regional particulate matter
c      model 1. Model description and preliminary results, J. Geophys.
c      Res., Vol 100, No D12, 26101-26209, 1995.
c 
c   2. Binkowski, F.S. Aerosols in Models-3 CMAQ, Chapter 10 of Science
c      Algorithms of the EPA Models-3 Community Multiscale Air Quality
c      (CMAQ) Modeling System, EPA/R-99/030, March 1999.
c      Available at: http://www.epa.gov/asmdnerl/models3
c 
c   3. Binkowski, F.S. and S.J. Roselle, Models-3 Community 
c      Multiscale Air Quality (CMAQ) model aerosol component 1:
c      Model Description.  J. Geophys. Res., Vol 108, No D6, 4183
c      doi:10.1029/2001JD001409, 2003.
c              
c   4. Reid, Prausnitz, and Poling The Properties of Gases and
c      Liquids, 4th edition, McGraw-Hill, 1987, pp 587-588
c 
c   5. Jiang, W. and H. Roth, A detailed review and analysis of 
c      science, algorithms, and code in the aerosol components of
c      Models-3/CMAQ.  1. Kinetic and thermodynamic processes in the
c      AERO2 module.  Report Number PET-1534-03S, 2003.
c 
c   6. Bhave, P.V., S.J. Roselle, F.S. Binkowski, C.G. Nolte, S. Yu,
c      G.L. Gipson, and K.L. Schere, CMAQ aerosol module development:
c      recent enhancements and future plans, Paper No. 6.8, CMAS Annual
c      Conference, Chapel Hill, NC, 2004.

      SUBROUTINE AEROPROC( NSPCSDA, CBLK, DT, COL, ROW, LAYER,
     &                     AIRTEMP, AIRPRS, AIRDENS, AIRRH,
     &                     SO4RATE, ORGPROD, NPSPCS, 
     &                     XLM, AMU,
     &                     DGATK, DGACC, DGCOR,
     &                     XXLSGAT, XXLSGAC, XXLSGCO,
     &                     PMASSAT, PMASSAC, PMASSCO,
     &                     PDENSAT, PDENSAC, PDENSCO,
     &                     GAMMA_N2O5,
     &                     LOGDEV )

      USE AERO_INFO          ! Module containing coagulation subroutines,
                             ! GETPAR, GETAF, CBLK indices, and several 
                             ! constants

      IMPLICIT NONE

C *** ARGUMENTS

      REAL DT                ! time step [s]
      INTEGER COL            ! grid column index
      INTEGER ROW            ! grid row index
      INTEGER LAYER          ! model layer index

      INTEGER NSPCSDA        ! number of variables in CBLK
      REAL CBLK( NSPCSDA )   ! main array of variables

      REAL AIRTEMP           ! Air temperature [K]
      REAL AIRPRS            ! Air pressure in [Pa]
      REAL AIRDENS           ! Air density [kg/m**3]
      REAL AIRRH             ! Fractional relative humidity

      REAL SO4RATE           ! Gas-phase sulfate production rate [ug/m**3 s]

      INTEGER NPSPCS         ! Number of ROG counter species
      REAL ORGPROD( NPSPCS ) ! change in ROG mixing ratio (ppm)

      REAL XLM               ! atmospheric mean free path [m]
      REAL AMU               ! atmospheric dynamic viscosity [kg/m s]

      REAL DGATK             ! Aitken mode geometric mean diameter [m]
      REAL DGACC             ! accumulation mode geometric mean diameter [m]
      REAL DGCOR             ! coarse mode geometric mean diameter [m]

      REAL XXLSGAT           ! natural log of geometric standard
      REAL XXLSGAC           ! deviations
      REAL XXLSGCO           ! coarse mode log of geometric std deviation

      REAL PMASSAT           ! Aitken mode mass concentration [ug/m**3]
      REAL PMASSAC           ! accumulation mode mass conc [ug/m**3]
      REAL PMASSCO           ! coarse mode mass concentration [ug/m**3]

      REAL PDENSAT           ! Aitken mode particle density [kg/m**3]
      REAL PDENSAC           ! accumulation mode density [kg/m**3]
      REAL PDENSCO           ! coarse mode particle density [kg/m**3]

      REAL GAMMA_N2O5        ! N2O5 heterogeneous reaction probability [ ]

      INTEGER LOGDEV         ! unit number of log file

C *** LOCAL VARIABLES

      CHARACTER*16  PNAME
      PARAMETER( PNAME = 'AEROPROC        ')
      INTEGER    SPC        ! Loop index

      REAL      SQRT_TEMP   ! square root of ambient temperature

C *** variables for coagulation processes (all double precision)

      REAL*8    LAMDA       ! mean free path [ m ]

C *** Intramodal coagulation rates [ m**3/s ] ( 0th & 2nd moments )
      REAL*8    BATAT( 2 )  ! Aitken mode
      REAL*8    BACAC( 2 )  ! accumulation mode

C *** Intermodal coagulation rates [ m**3/s ] ( 0th & 2nd moments )
      REAL*8    BATAC( 2 )  ! Aitken to accumulation
      REAL*8    BACAT( 2 )  ! accumulation from Aitken

c *** Intermodal coagulation rate [ m**3/s ] ( 3rd moment )
      REAL*8    c3ij        ! Aitken to accumulation

C *** 3rd moment intermodal transfer rate by coagulation
      REAL*8    C30ATAC     ! Aitken to accumulation

c *** Near Continnuum regime (independent of mode)
      REAL*8    KNC         ! KNC = TWO3 * BOLTZ *  AIRTEMP / AMU

c *** Free Molecular regime (depends upon modal density)
      REAL*8    KFMAT       ! KFMAT = SQRT(3.0*BOLTZ*AIRTEMP/PDENSAT)
      REAL*8    KFMAC       ! KFMAC = SQRT(3.0*BOLTZ*AIRTEMP/PDENSAC)
      REAL*8    KFMATAC     ! KFMATAC = SQRT( 6.0 * BOLTZ * AIRTEMP /
                            !                ( PDENSAT + PDENSAC ) )

c *** Parameters of the aerosol size distributions
      REAL*8 DGATK_D        ! double precision diameters
      REAL*8 DGACC_D
      REAL*8 SGATK_D        ! double precision standard deviations
      REAL*8 SGACC_D
      REAL*8 XXLSGAT_D      ! double precision natural logs of 
      REAL*8 XXLSGAC_D      !  standard deviations

C *** variables for advancing concentrations one time step

      REAL*8 A, B
      REAL*8 Y0, Y
      REAL*8 EXPDT
      REAL*8 LOSS, PROD, POL, LOSSINV
      REAL   TMASS
      REAL   FACTRANS ! special factor to compute mass transfer
      REAL   M20      ! for initial condidtions in time stepping

c *** growth rates for 3rd moments due to condensation
c     of precursor vapor on existing particles [ mom/m**3 s ]

      REAL*8 CGR(NMODES-1) ! Aitken & Accum. modes

      REAL       DIFFSULF  ! molecular diffusiviity for sulfuric acid
                           ! [m**2/sec]; calculated using Eqn 11-4.4 of
                           ! Reid et al. (1987) at 273.16 K and 101325 Pa
      PARAMETER( DIFFSULF = 9.36E-06 )

      REAL DIFFCORR ! Correction to DIFFSULF & DIFFORG for pressure

      REAL DV_SO4   ! molecular diffusivity of H2SO4 vapor 
                    ! after correction for ambient conditions
      REAL M2_OLD   ! second moment concentration excluding H2O
      REAL M3_OLD   ! third moment concentration excluding H2O

C *** Variables for mode merging
      REAL    AAA, XNUM, XM2, XM3,XXM2, XXM3
      REAL    FNUM, FM2, FM3, PHNUM, PHM2, PHM3
      REAL    ERF, ERFC    ! Error and complementary error function
      REAL    XX           ! dummy argument for ERF and ERFC

C *** Define the minimum atmospheric concentrations

      REAL       CONMIN    ! minimum concentration [ppm or ug/m3]
      PARAMETER( CONMIN = 1.0E-30 )

      REAL       AEROCONCMIN_AC ! minimum sulfate concentration in
                           ! acccumulation mode [ug/m**3]
                           ! changed to 1 pg/m3 by FSB 12/13/99
      PARAMETER( AEROCONCMIN_AC = 1.0E-6 )

      REAL       AEROCONCMIN_AT ! minimum sulfate concentration in
                           ! Aitken mode [ ug/m**3 ]; smaller than
                           ! any reported tropospheric concentration
      PARAMETER( AEROCONCMIN_AT = 1.0E-6 * AEROCONCMIN_AC )

      REAL       AEROCONCMIN_CO ! minimum coarse mode mass concentration
                           ! [ug/m**3]; set such that minimum number
                           ! concentration = 1.0 #/m**3
      PARAMETER( AEROCONCMIN_CO = 1.889544E-05 )

      REAL*8 NUMMIN_AT ! minimum number conc in Aitken mode [#/m**3]
      REAL*8 NUMMIN_AC ! minimum number conc in accumulation mode
      REAL*8 NUMMIN_C  ! minimum number conc in coarse mode [#/m**3]

      REAL*8 MINM2(NMODES)  ! minimum 2nd moment conc in each mode [m2/m3]

C *** Miscellaneous constants

      REAL*8     ONE
      PARAMETER( ONE = 1.0D0 )

C *** Logical flags (default values set within this subroutine)

      LOGICAL M3_WET_FLAG   ! flag to include water in the 3rd
                            ! moment calculation

      LOGICAL, PARAMETER :: LIMIT_Sg = .FALSE.  ! flag to dynamically set min coarse Sg

      LOGICAL FASTCOAG_FLAG ! flag to obtain coagulation coefficients
                            ! by analytical approximation (TRUE) or 
                            ! by Gauss-Hermite quadrature (FALSE)

      LOGICAL FIRSTIME
      DATA    FIRSTIME / .TRUE./
      SAVE FIRSTIME, NUMMIN_AT, NUMMIN_AC,NUMMIN_C, MINM2

C     :::::::::::::::::::::::::::::::::::::
c *** Statement function given for error function. Source is
c     Meng, Z., and J.H.Seinfeld (1994) On the Source of the
c     Submicrometer Droplet Mode of Urban and Regional Aerosols.
c     Aerosol Sci. and Technology, 20:253-265.
c     They cite Reasearch & Education Asociation (REA),
c     (1991) Handbook of Mathematical, Scientific, and Engineering
c     Formulas, Tables, Functions, Graphs, Transforms: REA,
c     Piscataway, NJ. p. 493.
c     Inserted the SIGN(1.0,XX) multiplier so that erf(-x) = -erf(x)

      ERF( XX ) = SIGN( 1.0,XX ) * SQRT( 1.0 - EXP( -4.0 * XX * XX / PI ) )
      ERFC( XX ) = 1.0 - ERF( XX )
C     ::::::::::::::::::::::::::::::::::::::::

C ---------------------------- Begin code -------------------------------

      IF ( FIRSTIME ) THEN
      
C *** calculate minimum values for number and 2nd moment.

         NUMMIN_AT = SO4FAC * AEROCONCMIN_AT /
     &            ( DGINIAT ** 3 * EXP(4.5 * LOG(SGINIAT)**2) )

         NUMMIN_AC = SO4FAC * AEROCONCMIN_AC /
     &            ( DGINIAC ** 3 * EXP(4.5 * LOG(SGINIAC)**2) )

         NUMMIN_C = 1.0

         MINM2(1) = NUMMIN_AT * DGINIAT ** 2 *
     &              EXP(2.0 * LOG(SGINIAT)**2 )

         MINM2(2) = NUMMIN_AC * DGINIAC ** 2 *
     &              EXP(2.0 * LOG(SGINIAC)**2 )

         MINM2(3) = NUMMIN_C * DGINICO ** 2 *
     &              EXP(2.0 * LOG(SGINICO)**2)

         FIRSTIME = .FALSE.

      END IF  ! firstime

C *** calculate square root of the ambient temperature for later use

      SQRT_TEMP = SQRT( AIRTEMP )

C *** Calculate mean free path [ m ]:
C     6.6328E-8 is the sea level value given in Table I.2.8
C     on page 10 of U.S. Standard Atmosphere 1962

      XLM = 6.6328E-8 * P0 * AIRTEMP  / ( T0 * AIRPRS )

C *** Calculate dynamic viscosity [ kg m**-1 s**-1 ]:
C     U.S. Standard Atmosphere 1962 page 14 expression
C     for dynamic viscosity is:
c     dynamic viscosity =  beta * T * sqrt(T) / ( T + S)
c     where beta = 1.458e-6 [ kg sec^-1 K**-0.5 ], s = 110.4 [ K ].

      AMU = 1.458E-6 * AIRTEMP * SQRT_TEMP / ( AIRTEMP + 110.4 )

C...set minimums for coarse mode

      CBLK( VANTHA ) = MAX( AEROCONCMIN_CO, CBLK( VANTHA ) )
      CBLK( VCO0 )   = MAX( REAL( NUMMIN_C ), CBLK( VCO0 ) )

c *** Outside AEROPROC, the surface area concentration [ m**2 / m**3 ]
c     of the Aitken and accumulation modes is tracked.  Internally,
c     the 2nd moment concentration is the variable of interest.
c     Surface area = pi * 2nd moment.

      CBLK( VAT2 ) = CBLK( VSURFAT ) / PI
      CBLK( VAC2 ) = CBLK( VSURFAC ) / PI
      CBLK( VCO2 ) = CBLK( VSURFCO ) / PI

C *** Update the third moments, geometric mean diameters, geometric 
c     standard deviations, modal mass totals, and modal particle 
c     densities, based on the concentrations of M2, M0, and speciated 
c     masses resulting from transport, cloud processing, and gas-phase 
c     chemistry.  Ignore H2O and semi-volatile SOA (i.e., M3_WET_FLAG 
c     = .FALSE.) because those species are not transported with the 
c     2nd moment and their concentrations will be updated subsequently
c     to establish gas/particle equilibrium.

      M3_WET_FLAG = .FALSE.

      CALL GETPAR( NSPCSDA, CBLK,
     &             PMASSAT, PMASSAC, PMASSCO,
     &             PDENSAT, PDENSAC, PDENSCO,
     &             DGATK, DGACC, DGCOR,
     &             XXLSGAT, XXLSGAC, XXLSGCO,
     &             M3_WET_FLAG, LIMIT_Sg )

c *** SECONDARY ORGANICS
c     Update the secondary organic aerosol (SOA) mass concentrations
c     and the SVOC mass concentrations by equilibrium absorptive 
c     partitioning between the particle and vapor phases.  Assume all
c     SOA resides in the accumulation mode.

      CALL ORGAER5( DT, NSPCSDA, CBLK, NPSPCS, ORGPROD, 
     &              AIRTEMP, AIRPRS, LAYER, LOGDEV )

c *** HETEROGENEOUS CHEMISTRY
c     Update the N2O5 and HNO3 concentrations to account for 
c     heterogenous nitrate formation.

      CALL HETCHEM ( NSPCSDA, CBLK, GAMMA_N2O5, AIRTEMP, AIRRH, 
     &               AIRPRS, DT )

C *** SECONDARY INORGANICS
c     The VOLINORG subroutine includes the treatment of new particle
c     production and a fully dynamic treatment of inorganic gas-to-
c     particle mass transfer.

C *** Compute H2SO4 diffusivity, correct for temperature and pressure

      DIFFCORR = ( P0 / AIRPRS ) * ( AIRTEMP / 273.16 ) ** 1.75
      DV_SO4 = DIFFSULF * DIFFCORR

C *** Augment 2nd and 3rd moment concentrations with H2O and recompute
c     size distribution parameters because wetted distribution is
c     needed in subroutine VOLINORG

      M3_OLD       = MAX( CONMIN, CBLK( VAT3 ) )
      M2_OLD       = CBLK( VAT2 )
      CBLK( VAT3 ) = CBLK( VAT3 ) + H2OFAC * CBLK( VH2OAI )
      CBLK( VAT2 ) = M2_OLD * ( CBLK( VAT3 ) / M3_OLD ) ** TWO3

      M3_OLD       = MAX( CONMIN, CBLK( VAC3 ) )
      M2_OLD       = CBLK( VAC2 )
      CBLK( VAC3 ) = CBLK( VAC3 ) + H2OFAC * CBLK( VH2OAJ )
      CBLK( VAC2 ) = M2_OLD * ( CBLK( VAC3 ) / M3_OLD ) ** TWO3

      M3_OLD       = MAX( CONMIN, CBLK( VCO3 ) )
      M2_OLD       = CBLK( VCO2 )
      CBLK( VCO3 ) = CBLK( VCO3 ) + H2OFAC * CBLK( VH2OK )
      CBLK( VCO2 ) = M2_OLD * ( CBLK( VCO3 ) / M3_OLD ) ** TWO3

      M3_WET_FLAG = .TRUE.

      CALL GETPAR( NSPCSDA, CBLK,
     &             PMASSAT, PMASSAC, PMASSCO,
     &             PDENSAT, PDENSAC, PDENSCO,
     &             DGATK, DGACC, DGCOR,
     &             XXLSGAT, XXLSGAC, XXLSGCO,
     &             M3_WET_FLAG, LIMIT_Sg     )

      CALL VOLINORG( NSPCSDA, CBLK, DT, COL, ROW, LAYER, AIRPRS, AIRTEMP,
     &               AIRRH, DV_SO4,  REAL(MINM2), SO4RATE,
     &               PMASSAT, PMASSAC, PMASSCO,
     &               PDENSAT, PDENSAC, PDENSCO,
     &               DGATK, DGACC, DGCOR,
     &               XXLSGAT, XXLSGAC, XXLSGCO, 
     &               CGR, M3_WET_FLAG, LOGDEV )

C *** COAGULATION
c     Calculate coagulation coefficients using a method dictated by
c     the value of FASTCOAG_FLAG.  If TRUE, the computationally-
c     efficient GETCOAGS routine is used.  If FALSE, the more intensive
c     Gauss-Hermite numerical quadrature method is used.  See Section 
c     2.1 of Bhave et al. (2004) for further discussion.

      FASTCOAG_FLAG = .TRUE.

C *** set atmospheric mean free path in double precision
      LAMDA    = XLM

C *** calculate term used in Equation A6 of Binkowski & Shankar (1995)
      KNC      = TWO3 * BOLTZ *  AIRTEMP / AMU

C *** calculate terms used in Equation A5 of Binkowski & Shankar (1995)
      KFMAT    = SQRT( 3.0 * BOLTZ * AIRTEMP / PDENSAT )
      KFMAC    = SQRT( 3.0 * BOLTZ * AIRTEMP / PDENSAC )
      KFMATAC  = SQRT( 6.0 * BOLTZ * AIRTEMP / ( PDENSAT + PDENSAC ) )
      
C *** transfer of number to accumulation mode from Aitken mode is zero
      BACAT( 1 ) = 0.0

      IF ( FASTCOAG_FLAG ) THEN ! Solve coagulation analytically

C *** set geometric mean diameters, geometric standard deviations, and
c     ln(GSD) in double precision
         DGATK_D = DGATK
         DGACC_D = DGACC
         XXLSGAT_D = XXLSGAT
         XXLSGAC_D = XXLSGAC
         SGATK_D = EXP( XXLSGAT )
         SGACC_D = EXP( XXLSGAC )

c *** calculate intermodal and intramodal coagulation coefficients
c     for zeroth and second moments, and intermodal coagulation 
c     coefficient for third moment
         CALL GETCOAGS( LAMDA, KFMATAC, KFMAT, KFMAC, KNC,
     &                  DGATK_D, DGACC_D, SGATK_D, SGACC_D, 
     &                  XXLSGAT_D,XXLSGAC_D, 
     &                  BATAT( 2 ), BATAT( 1 ), BACAC( 2 ), BACAC( 1 ),
     &                  BATAC( 2 ), BACAT( 2 ), BATAC( 1 ), C3IJ )

      ELSE                 ! Use Gauss-Hermite numerical quadrature

c *** calculate Aitken-mode intramodal coagulation coefficients
c     for zeroth and second moments
         CALL INTRACOAG_GH( LAMDA, KFMAT, KNC, DGATK,
     &                      XXLSGAT, BATAT( 2 ), BATAT( 1 ) )

C *** calculate accumulation-mode intramodal coagulation coefficients
c     for zeroth and second moments
         CALL INTRACOAG_GH( LAMDA, KFMAC, KNC, DGACC,
     &                      XXLSGAC, BACAC( 2 ), BACAC( 1 ) )

C *** calculate intermodal coagulation coefficients for zeroth, second, 
c     and third moments
         CALL INTERCOAG_GH( LAMDA, KFMATAC, KNC, DGATK, DGACC,
     &                      XXLSGAT, XXLSGAC,
     &                      BATAC(2), BACAT(2), BATAC(1), C3IJ )
      
      END IF   ! FASTCOAG_FLAG

C *** calculate 3rd moment intermodal transfer rate by coagulation
      C30ATAC = C3IJ * CBLK( VAC0 ) * CBLK( VAT0 )


C *** TAKE ONE FORWARD TIME STEP - Solve Modal Dynamics Equations
c     This code implements Section 1.4 of Binkowski and Roselle (2003)
c     with two notable exceptions.  1) emissions are treated in
c     CMAQ's vertical diffusion routine, so they do not appear in the
c     following equations. 2) new particle formation and condensational
c     growth are now treated in the VOLINORG subroutine, so they do not
c     appear in the following equations.
c
c     M2 is updated before M0 because the intermodal transfer rate of
c     M2 is a function of the number concentrations.  In contrast,
c     production and loss rates of M0 are independent of M2.  Advancing
c     M2 before M0 avoids operator splitting within the modal-dynamic-
c     equation solution.  A similar rearrangement would be necessary
c     for the M3 update, but the dependence of M3 on number
c     concentrations already is accounted for in the C30ATAC term.

C *** UPDATE SECOND MOMENT
C     For each lognormal mode, solve equations of form:
C       dM2/dt = P2 - L2*M2   ! if L2 > 0
C     with solution
c       M2(t) = P2/L2 + ( M2(t0) - P2/L2 ) * exp( -L2*dt )
c     OR
c       dM2/dt = P2           ! if L2 = 0
c     with solution
c       M2(t) = M2(t0) + P2*dt

C *** Aitken mode: initial value of M2

      M20 = CBLK( VAT2 )

C *** Loss of 2nd moment from Aitken mode is due to intermodal
c     coagulation with accumulation mode and intramodal coagulation.
c     Production term is removed, because new particle formation
c     and condensational growth are accounted for in VOLINORG.

      LOSS = (
     &       (
     &       BATAT(2) * CBLK( VAT0 ) +
     &       BATAC(2) * CBLK( VAC0 )
     &       ) * CBLK( VAT0 )
     &       ) / M20

C *** Solve for M2_Aitken based on LOSS during this time step
c     Note: LOSS is assumed to be non-negative.

      IF ( LOSS .GT. 0.0) THEN
        Y = M20 * EXP( -LOSS * DT )
      ELSE
        Y = M20
      END IF ! test on loss

C *** Transfer new value of M2_Aitken to the CBLK array

      CBLK( VAT2 ) = MAX( REAL( MINM2( 1 ) ), REAL( Y ) )

C *** Accumulation mode: initial value of M2

      M20 = CBLK( VAC2 )

c *** Production of 2nd moment in accumulation mode is due to
c     intermodal coagulation Aitken mode

      PROD = BACAT(2) * CBLK( VAC0 ) * CBLK( VAT0 )

C *** Loss of 2nd moment from accumulation mode is due only to
c     intramodal coagulation

      LOSS =  ( BACAC(2) * CBLK(VAC0) * CBLK(VAC0) ) / M20

C *** Solve for M2_accum based on PROD and LOSS during this time step
c     Note: LOSS is assumed to be non-negative.

      IF ( LOSS .GT. 0.0) THEN
        POL = PROD / LOSS
        Y = POL + ( M20 - POL ) * EXP( -LOSS * DT )
      ELSE
        Y = M20 + PROD * DT
      END IF ! test on loss

C *** Transfer new value of M2_accum to CBLK array

      CBLK( VAC2 ) = MAX( REAL( MINM2( 2 ) ), REAL( Y ) )

C *** Coarse mode: no change because coagulation of coarse particles
c     is neglected in current model version.

c *** end of update for second moment


C *** UPDATE ZEROTH MOMENT (i.e. number concentration)

C *** Aitken mode: initial value of M0

      Y0 = CBLK( VAT0 )

c     The rate of change for M0_Aitken is described in Equation 8a of
c     Binkowski & Roselle (2003), with the c_i term equal to 0.

      A = BATAT(1)                 ! intramodal coagulation
      B = BATAC(1) * CBLK( VAC0 )  ! intermodal coagulation

      EXPDT = EXP( - B * DT )
      IF ( EXPDT .LT. 1.0D0 ) THEN
         Y = B * Y0 * EXPDT / ( B + A * Y0 * (1.0D0 - EXPDT ) )
      ELSE
         Y = Y0                 ! solution in the limit that B approaches zero
      END IF

C *** Transfer new value of M0_Aitken to the CBLK array

      CBLK( VAT0 )  = MAX( NUMMIN_AT, Y )

C *** Accumulation mode: initial value of M0

      Y0 = CBLK( VAC0 )

c     The rate of change for M0_accum is described in Equation 8b of
c     Binkowski & Roselle (2003), except the coefficient C is zero
c     because emissions are treated outside the CMAQ aerosol module.
c     The equation reduces to the form: dY/dt = -A * Y**2 , where

      A = BACAC(1)                 ! intramodal coagulation

C *** Solve for M0_accum using Smoluchowski's solution

      Y = Y0 / ( ONE + A * Y0 * DT)

C *** Transfer new value of M0_accum to the CBLK array

      CBLK( VAC0 ) = MAX( NUMMIN_AC, Y )

c *** end of update for zeroth moment - note that the coarse mode number does
c     not change because coarse-mode coagulation is neglected in the model


C *** UPDATE MASS CONCENTRATIONS (for each species)
c     The following procedure is described in Paragraphs 21-23
c     of Binkowski & Roselle (2003), except the Ei,n and Ej,n terms
c     are excluded here because emissions are treated outside the
c     CMAQ aerosol module.

c     Aitken mode mass concentration rates of change are of the form:
c       dc/dt = P - L*c    ! Equation 9a of Binkowski & Roselle (2003)
c     with solution
c       c(t0 + dt) = P/L + ( c(t0) - P/L ) * exp(-L*dt)

c     For all species, loss of Aitken mode mass is due to intermodal
c     coagulation.
c       LOSSn = PI/6 * RHOn * C30ATAC / MASSn
c       RHOn  = MASSn / (M3 * PI/6)
c     When above equations are combined, the PI/6 terms cancel yielding
c       LOSSn = C30ATAC / M3
c     where LOSSn is the loss rate of species n, RHOn is the mass of
c     species n per unit of particle volume, C30ATAC is the 3rd moment
c     loss rate due to intermodal coagulation, MASSn is the mass
c     concentration of species n, and M3 is the 3rd moment
c     concentration.

      LOSS =  C30ATAC / CBLK( VAT3 )

c     Setup extra variables to solve for Aitken mode mass concentrations

      FACTRANS = LOSS * DT
      EXPDT = EXP(- FACTRANS)
      LOSSINV = 1.0 / LOSS

C *** SECONDARY INORGANICS: SULFATE, AMMONIUM, NITRATE, CHLORIDE and WATER
c     These species are produced by condensation, but their mass
c     concentrations have been updated in subroutine VOLINORG.  Therefore,
c     only the mass transfer due to intermodal coagulation is
c     treated here.

      TMASS = CBLK( VSO4AI ) + CBLK( VSO4AJ )
      CBLK( VSO4AI ) = CBLK( VSO4AI ) * EXPDT
      CBLK( VSO4AJ ) = MAX( CONMIN, TMASS - CBLK( VSO4AI ) )

      TMASS = CBLK( VNH4AI ) + CBLK( VNH4AJ )
      CBLK( VNH4AI ) = CBLK( VNH4AI ) * EXPDT
      CBLK( VNH4AJ ) = MAX( CONMIN, TMASS - CBLK( VNH4AI ) )

      TMASS = CBLK( VNO3AI ) + CBLK( VNO3AJ )
      CBLK( VNO3AI ) = CBLK( VNO3AI )  * EXPDT
      CBLK( VNO3AJ ) = MAX( CONMIN, TMASS - CBLK( VNO3AI ) )

      TMASS = CBLK( VCLI ) + CBLK( VCLJ )
      CBLK( VCLI ) = CBLK( VCLI )  * EXPDT
      CBLK( VCLJ ) = MAX( CONMIN, TMASS - CBLK( VCLI ) )

      TMASS = CBLK( VH2OAI ) + CBLK( VH2OAJ )
      CBLK( VH2OAI ) = CBLK( VH2OAI ) * EXPDT
      CBLK( VH2OAJ ) = MAX( CONMIN, TMASS - CBLK( VH2OAI) )

C *** SECONDARY ORGANICS
c     Due to limited ambient data on the size distribution of SOA, these
c     species are assumed to be entirely in the accumulation mode.
c     Therefore, their concentrations are unaffected by coagulation.

C *** PRIMARY SPECIES: ANTHROPOGENIC ORGANICS, EC, and OTHER PM2.5
c     Because emissions are treated in a different module, there is 
c     no production term for these species.  Only the mass transfer 
c     due to intermodal coagulation is treated here.

      TMASS = CBLK( VORGPAI ) + CBLK( VORGPAJ)
      CBLK( VORGPAI ) = CBLK( VORGPAI ) * EXPDT
      CBLK( VORGPAI ) = MAX(CONMIN, CBLK( VORGPAI ) )
      CBLK( VORGPAJ ) = MAX( CONMIN, TMASS - CBLK( VORGPAI ) )

      TMASS = CBLK( VECI) + CBLK( VECJ )
      CBLK( VECI ) = CBLK( VECI ) * EXPDT
      CBLK( VECI ) = MAX(CONMIN, CBLK( VECI ) )
      CBLK( VECJ ) = MAX( CONMIN, TMASS - CBLK( VECI ) )

      TMASS = CBLK( VP25AI ) + CBLK( VP25AJ)
      CBLK( VP25AI ) = CBLK( VP25AI) * EXPDT
      CBLK( VP25AI ) = MAX( CONMIN, CBLK( VP25AI) )
      CBLK( VP25AJ ) = MAX( CONMIN, TMASS - CBLK( VP25AI ) )

c *** end of update for species mass concentrations

C *** MODE MERGING
c     This code implements Section 1.5 of Binkowski and Roselle (2003).
c     If the Aitken mode mass is growing faster than accumulation mode
c     mass and the Aitken mode number concentration exceeds the 
c     accumulation mode number concentration, then modes are merged by
c     renaming.

      IF ( CGR( 1 ) .GT. CGR( 2 ) .AND.
     &     CBLK( VAT0 ) .GT. CBLK( VAC0 ) ) THEN

C *** Before mode merging, update the third moments, geometric mean
c     diameters, geometric standard deviations, modal mass totals, and
c     particle densities, based on the new concentrations of M2, M0, and
c     speciated masses calculated above.

         CALL GETPAR( NSPCSDA, CBLK,
     &                PMASSAT, PMASSAC, PMASSCO,
     &                PDENSAT, PDENSAC, PDENSCO,
     &                DGATK, DGACC, DGCOR,
     &                XXLSGAT, XXLSGAC,  XXLSGCO,
     &                M3_WET_FLAG, LIMIT_Sg )

C *** Calculate AAA = ln( Dij / DGATK ) / ( SQRT2 * XXLSGAT ), where Dij
c     is the diameter at which the Aitken-mode and accumulation-mode 
c     number distributions intersect (i.e., overlap).  AAA is equivalent
c     to the "Xnum" term described below Equation 10a by Binkowski and 
c     Roselle (2003).

         AAA = GETAF( CBLK( VAT0 ),
     &                CBLK( VAC0 ),
     &                DGATK,
     &                DGACC,
     &                XXLSGAT,
     &                XXLSGAC,
     &                SQRT2 )

C *** Ensure that Xnum is large enough so that no more than half of
c     the Aitken mode mass is merged into the accumulation mode during 
c     any given time step.  This criterion is described in Paragraph 26
c     of Binkowski and Roselle (2003).

         XXM3 = 3.0 * XXLSGAT  / SQRT2
         XNUM = MAX( AAA, XXM3 )

C *** Factors used in error function calls for M2 and M3 mode merging

         XXM2 = TWO3 * XXM3
         XM2  = XNUM - XXM2 ! set up for 2nd moment transfer
         XM3  = XNUM - XXM3 ! set up for 3rd moment and mass transfers

C *** Calculate the fractions of the number, 2nd, and 3rd moment 
c     distributions with diameter greater than the intersection diameter
         FNUM  = 0.5 * ERFC( XNUM )            ! Eq 10a of B&R 2003
         FM2   = 0.5 * ERFC( XM2 )             ! Eq 10b of B&R 2003
         FM3   = 0.5 * ERFC( XM3 )             ! Eq 10b of B&R 2003

C *** Calculate the fractions of the number, 2nd, and 3rd moment
c     distributions with diameters less than the intersection diameter.
         PHNUM = 0.5 * ( 1.0 + ERF( XNUM ) )  ! Eq 10c of B&R 2003
         PHM2  = 0.5 * ( 1.0 + ERF( XM2 ) )   ! Eq 10d of B&R 2003
         PHM3  = 0.5 * ( 1.0 + ERF( XM3 ) )   ! Eq 10d of B&R 2003

C *** Update accumulation-mode moment concentrations using
c     Equations 11a - 11c of Binkowski and Roselle (2003).

         CBLK( VAC0 ) = CBLK( VAC0 ) + CBLK( VAT0 ) * FNUM
         CBLK( VAC2 ) = CBLK( VAC2 ) + CBLK( VAT2 ) * FM2
         CBLK( VAC3 ) = CBLK( VAC3 ) + CBLK( VAT3 ) * FM3

C *** Update Aitken-mode moment concentrations using
c     Equations 11d - 11f of Binkowski and Roselle (2003).

         CBLK( VAT0 ) = CBLK( VAT0 ) * PHNUM
         CBLK( VAT2 ) = CBLK( VAT2 ) * PHM2
         CBLK( VAT3 ) = CBLK( VAT3 ) * PHM3

C *** Rename masses of each species from Aitken mode to acumulation mode
c     using Equation 11b of Binkowski and Roselle (2003).

         CBLK( VSO4AJ ) = CBLK( VSO4AJ)   + CBLK( VSO4AI )  * FM3
         CBLK( VNH4AJ ) = CBLK( VNH4AJ )  + CBLK( VNH4AI )  * FM3
         CBLK( VNO3AJ ) = CBLK( VNO3AJ )  + CBLK( VNO3AI )  * FM3
         CBLK( VH2OAJ ) = CBLK( VH2OAJ )  + CBLK( VH2OAI )  * FM3
         CBLK( VORGPAJ )= CBLK( VORGPAJ ) + CBLK( VORGPAI ) * FM3
         CBLK( VP25AJ ) = CBLK( VP25AJ )  + CBLK( VP25AI )  * FM3
         CBLK( VECJ )   = CBLK( VECJ )    + CBLK( VECI )    * FM3

C *** Update Aitken-mode species masses for loss to accumulation mode 
c     using Equation 11e of Binkowski and Roselle (2003).

         CBLK( VSO4AI )   = CBLK( VSO4AI )  * PHM3
         CBLK( VNH4AI )   = CBLK( VNH4AI )  * PHM3
         CBLK( VNO3AI )   = CBLK( VNO3AI )  * PHM3
         CBLK( VH2OAI )   = CBLK( VH2OAI )  * PHM3
         CBLK( VORGPAI )  = CBLK( VORGPAI ) * PHM3
         CBLK( VP25AI )   = CBLK( VP25AI )  * PHM3
         CBLK( VECI )     = CBLK( VECI)     * PHM3

      END IF ! end check on necessity for merging

c *** end of update for mode merging

C *** Update the third moments, geometric mean diameters, geometric 
c     standard deviations, modal mass totals, and particle densities,
c     based on the final concentrations of M2, M0, and speciated masses
c     after mode merging is complete.

      CALL GETPAR( NSPCSDA, CBLK,
     &             PMASSAT, PMASSAC, PMASSCO,
     &             PDENSAT, PDENSAC, PDENSCO,
     &             DGATK, DGACC, DGCOR,
     &             XXLSGAT, XXLSGAC, XXLSGCO,
     &             M3_WET_FLAG, LIMIT_Sg )

C *** Set minimum value for all concentrations in the CBLK array

      DO SPC = 1, NSPCSDA
         CBLK( SPC ) = MAX( CBLK( SPC ), CONMIN )
      END DO

C *** Update surface area concentration by multiplying 2nd moment by PI

      CBLK( VSURFAT ) = PI * CBLK( VAT2 )
      CBLK( VSURFAC ) = PI * CBLK( VAC2 )
      CBLK( VSURFCO ) = PI * CBLK( VCO2 )
      
      RETURN

      END  SUBROUTINE AEROPROC

c /////////////////////////////////////////////////////////////////////
c  SUBROUTINE NEWPART3 calculates the new particle production rate
c    due to binary nucleation of H2SO4 and H2O vapor.  The nucleation
c    rate is a parameterized function of temperature, relative humidity,
c    and the vapor-phase H2SO4 concentration, following the work of
c    Kulmala et al (1998).  This rate is then used to determine the 
c    production rates of aerosol number, 2nd moment, and aerosol
c    sulfate, following the description in Section 1.2 of Binkowski & 
c    Roselle (2003), except the new particles are assumed to be of 2.0
c    nm diameter instead of 3.5 nm.
c 
c  KEY SUBROUTINES/FUNCTIONS CALLED: none
c 
c  REVISION HISTORY:
c 
c FSB 11/29/99 Extracted code from PARTPROD_VA subroutine of RPM
c 
c SJR ??/??/?? New call vector and limited the mass production rate
c 
c FSB 04/11/02 Decreased the diameter of new particles from 3.5 nm to
c     2 nm.  New particles are monodispersed.
c 
c PVB 09/21/04 Changed MWH2SO4 from 98.07354 to 98.0 g/mol for 
c     consistency with the mechanism files.  Added in-line documentation
c     with input from FSB.
c 
c  REFERENCES:
c   1. Kulmala, M., A. Laaksonen, and L. Pirjola, Parameterizations for
c      sulfuric acid/water nucleation rates.  J. Geophys. Res., Vol 103, 
c      No D7, 8301-8307, 1998.
c
c   2. Binkowski, F.S. and S.J. Roselle, Models-3 Community 
c      Multiscale Air Quality (CMAQ) model aerosol component 1:
c      Model Description.  J. Geophys. Res., Vol 108, No D6, 4183
c      doi:10.1029/2001JD001409, 2003.

      SUBROUTINE NEWPART3 ( RH, Temp, XH2SO4, SO4RATE,
     &                      DNDT, DMDT_so4, DM2DT )

      USE AERO_INFO        ! Module containing useful constants
                           ! including RGASUNIV, AVO, and RHOSO4
      implicit none

C *** INPUT ARGUMENTS

      real RH         ! fractional relative humidity
      real Temp       ! ambient temperature [ K ]
      real XH2SO4     ! sulfuric acid concentration [ ug / m**3 ]
      real SO4RATE    ! gas-phase H2SO4 production rate [ ug / m**3 s ]

c *** OUTPUT ARGUMENTS

      real*8 DNDT     ! particle number production rate [ m^-3 s^-1 ]
      real*8 DMDT_so4 ! SO4 mass production rate [ ug / m**3 s ]
      real*8 DM2DT    ! second moment production rate [ m**2 / m**3 s ]

c *** PARAMETERS

      character*16 PNAME
      parameter( PNAME = 'NEWPART         ')

c *** conversion factors:

      real ugm3_ncm3 ! micrograms/m**3 to number/cm**3
      parameter( ugm3_ncm3 = (AVO / MWh2so4) * 1.0e-12 )

c *** particle size parameters:

      real d20   ! diameter of a new particle [cm]
      parameter( d20 = 2.0E-07 )

      real d20sq ! new-particle diameter squared [cm**2]
      parameter( d20sq = d20 * d20 )

      real m2_20 ! new-particle diameter squared [m**2]
      parameter( m2_20 = 1.0e-4 * d20sq )

      real v20   ! volume of a new particle [cm**3]
      parameter( v20 = PI6 * d20 * d20sq )

      real*8 sulfmass  ! mass of a new particle [ug]
      parameter( sulfmass = 1.0D+3 * RHOSO4 * v20 )

      real*8 sulfmass1 ! inverse of sulfmass [ug**-1]
      parameter( sulfmass1 = 1.0D0 / sulfmass )

c *** LOCAL VARIABLES used to determine nucleation rate

      real Nwv     ! water vapor concentration [ 1/cm**3 ]
      real Nav0    ! saturation vapor conc of H2SO4 [ 1/cm**3 ]
      real Nav     ! H2SO4 vapor concentration [ 1/cm**3 ]
      real Nac     ! critical H2SO4 vapor concentration [ 1/cm**3 ]
      real RA      ! fractional relative acidity
      real delta   ! temperature-correction term
      real Xal     ! H2SO4 mole fraction in the critical nucleus
      real Nsulf   ! see usage
      real*8 chi   ! factor to calculate Jnuc
      real*8 JnucK ! nucleation rate [ cm ** -3  s ** -1 ]
                   ! (Kulmala et al.)
      real tt      ! dummy variable for statement functions

c *** STATEMENT FUNCTIONS

      real ph2so4, ph2o ! arithmetic statement functions for saturation
                        ! vapor pressures of h2so4 and h2o [Pa] taken 
                        ! from Appendix of Kulmala et al. (1998), p8306

      ph2o( tt )   = exp( 77.34491296 -7235.424651 / tt
     &                   - 8.2 * log( tt ) + tt * 5.7113e-03 )

      ph2so4( tt ) = exp( 27.78492066 - 10156.0 / tt)

C ---------------------------- Begin code ------------------------------

C *** initialize variables
      DNDT     = 0.0D0
      DMDT_so4 = 0.0D0
      DM2DT    = 0.0D0

C *** NUCLEATION RATE
c     Calculate the sulfuric acid/water nucleation rate.  This code 
c     implements Section 3 of Kulmala et al. (1998).  Note that all
c     variables in the Kulmala parameterization are in cgs units.

c *** calculate water vapor concentration [1/cm**3] using ambient RH
c     and the formula in Appendix of Kulmala et al. (1998), p8306.

      Nwv = RH * ph2o( Temp ) / ( RGASUNIV * Temp ) * AVO * 1.0E-6

c *** calculate saturation vapor concentration of H2SO4 [1/cm**3]
c       using formula in the Appendix of Kulmala et al. (1998), p8306.

      Nav0 = ph2so4( Temp ) / ( RGASUNIV * Temp ) * AVO * 1.0E-6

c *** convert ambient H2SO4 vapor concentration into [1/cm**3] units

      Nav = ugm3_ncm3 * XH2SO4

c *** calculate critical concentration of H2SO4 vapor needed to produce
c     1 particle/(cm**3 s) using Equation 18 of Kulmala et al (1998)

      Nac = exp( - 14.5125 + 0.1335 * Temp
     &           - 10.5462 * RH + 1958.4 * RH  / Temp )

c *** calculate relative acidity, defined as the ambient concentration
c     divided by the saturation concentration of H2SO4 vapor

      RA = Nav / Nav0

c *** calculate temperature correction factor using Equation 22 of
c      Kulmala et al (1998)

      delta = 1.0 + ( Temp - 273.15 ) / 273.15

c *** calculate mole fraction of H2SO4 in the critical nucleus using
c     Equation 17 of Kulmala et al (1998)

      Xal = 1.2233 - 0.0154 * RA / ( RA + RH ) + 0.0102 * log( Nav )
     &    - 0.0415 * log( Nwv ) + 0.0016 * Temp

C *** calculate Nsulf as defined in Equation 21 of Kulmala et al (1998)

      Nsulf = log( Nav / Nac )

c *** calculate natural log of nucleation rate using Equation 20 of
c     Kulmala et al (1998)

      chi = 25.1289 * Nsulf - 4890.8 * Nsulf / Temp
     &    - 1743.3 / Temp - 2.2479 * delta * Nsulf * RH
     &    + 7643.4 * Xal / Temp
     &    - 1.9712 * Xal * delta / RH

c *** calculate nucleation rate using Eq 19 of Kulmala et al (1998)

      JnucK = exp( chi ) ! [ # / cm**3 s ]

C *** MOMENT PRODUCTION RATES
c     Calculate the production rate of number, sulfate mass, and 2nd
c     moment, due to the H2SO4/H2O nucleation assuming that each critical
c     nucleus grows instantaneously to 2.0 nm.  This code follows Section
c     1.2 of Binkowski & Roselle (2003), except the assumed particle
c     diameter has been changed from 3.5 to 2.0 nm.

C *** convert production rate of number to [ # / m**3 s]

      DNDT = 1.0E06 * JnucK

C *** calculate mass production rate [ ug / (m**3 s) ] analogous to
c     Equation 6a of Binkowski & Roselle (2003).  Set the upper limit 
c     of the mass production rate as the gas-phase production rate of 
c     H2SO4, and adjust the number production rate accordingly.

      DMDT_so4 = sulfmass * DNDT
      IF ( DMDT_so4 .GT. SO4RATE ) THEN
         DMDT_so4 = SO4RATE
         DNDT = DMDT_SO4 * sulfmass1
      END IF

C *** calculate the production rate of 2nd moment [ m**2 / (m**3 s) ]
c     This is similar to Equation 6c of Binkowski & Roselle (2003),
c     except the factor of PI is removed and the assumed particle 
c     diameter is different.

      DM2DT =  DNDT * m2_20

      RETURN
      
      END SUBROUTINE NEWPART3

c /////////////////////////////////////////////////////////////////////
c  SUBROUTINE HCOND3 calculates the size-dependent term in the 
c   condensational-growth rate expression for the 2nd and 3rd moments of
c   a lognormal aerosol mode using the harmonic mean method.  This code 
c   follows Section A2 of Binkowski & Shankar (1995).
c 
c  KEY SUBROUTINES/FUNCTIONS CALLED:  none
c 
c  REVISION HISTORY:
c     coded November 7, 2003 by Dr. Francis S. Binkowski
c 
c     Revised November 20, 2003 by F. Binkowski to have am1 and 
c     am2 as inputs
c
c  REFERENCE:
c   1. Binkowski, F.S. and U. Shankar, The regional particulate matter
c      model 1. Model description and preliminary results, J. Geophys.
c      Res., Vol 100, No D12, 26101-26209, 1995.

      SUBROUTINE HCOND3( am0, am1, am2, Dv, alpha, cbar, F )

      implicit none
      
c *** input:

      real*8 am0  ! zeroth moment of mode  [ # / m**3 ]
      real*8 am1  ! first moment of mode   [ m / m**3 ]
      real*8 am2  ! second moment of mode  [ m**2 / m**3 ]
      real Dv     ! molecular diffusivity of the
                  ! condensing vapor  [ m**2 / s ]
      real alpha  ! accommodation coefficient           
      real cbar   ! kinetic velocity of condensing vapor [ m / s ]   
              
c *** output: 
                
      real*8 F( 2 ) ! size-dependent term in condensational-growth rate
                    ! F(1) = 2nd moment [m^2 / m^3 s]
                    ! F(2) = 3rd moment [m^3 / m^3 s]

c *** internal

      real*8 gnc2 ! integrals used to calculate F(1) [m^2 / m^3 s]
      real*8 gfm2 ! 

      real*8 gnc3 ! integrals used to calculate F(2) [m^3 / m^3 s]
      real*8 gfm3 ! 
                  
      real*8 pi
      parameter( pi = 3.14159265358979324d0 )
      real*8 twopi
      parameter( twopi = 2.0D0 * pi )
      real*8 pi4
      parameter( pi4 = 0.25D0 * pi )
                   
c *** start code

C *** Implement equation A15 of Binkowski & Shankar (1995) for the
c     2nd and 3rd moments of a lognormal mode of arbitrary size.  

      gnc2 = twopi * Dv * am0          ! 2nd moment, near-continuum
      gnc3 = twopi * Dv * am1          ! 3rd moment, near-continuum
      gfm2 = pi4 * alpha * cbar * am1  ! 2nd moment, free-molecular
      gfm3 = pi4 * alpha * cbar * am2  ! 3rd moment, free-molecular

C *** Implement equation A13 of Binkowski & Shankar (1995) for a
c     lognormal mode of arbitrary size.  These are the size-dependent
c     terms in the condensational-growth rate expression, given in 
c     equation 7a of B&S (1995).

      F( 1 ) = gnc2 * gfm2 / ( gnc2 + gfm2 )  ! 2nd moment
      F( 2 ) = gnc3 * gfm3 / ( gnc3 + gfm3 )  ! 3rd moment
            
      return 
      
      end subroutine HCOND3

c /////////////////////////////////////////////////////////////////////
C *** this routine calculates the  sedimentation
c     velocities for the coarse mode.
C     coded 5/15/97 by Dr. Francis S. Binkowski.
c     modified to eliminate INCLUDE files  3/3/99 - FSB

      SUBROUTINE GETVSED( NASPCSSED,
     &                    AIRTEMP, AIRDENS,
     &                    XLM, AMU,
     &                    DGCOR,
     &                    PDENSCO,
     &                    VSED )

C *** calculate size-averaged particle dry sedimentation velocities.
c
c  REFERENCE:
c      Binkowski, F.S. and U. Shankar, The regional particulate matter
c      model 1. Model description and preliminary results, J. Geophys.
c      Res., Vol 100, No D12, 26101-26209, 1995.

      IMPLICIT NONE

C *** Input

      INTEGER NASPCSSED   ! number of sedimentation velocities

C Meteorological information in blocked arays:

      REAL AIRTEMP     ! Air temperature [ K ]
      REAL AIRDENS   ! Air density  [ kg m^-3 ]

C *** atmospheric properties

      REAL XLM   ! atmospheric mean free path [ m ]
      REAL AMU   ! atmospheric dynamic viscosity [ kg/m s ]

C *** aerosol properties:

      REAL DGCOR  ! coarse mode geometric mean diameter [ m ]

c *** average modal particle densities  [ kg/m**3 ]

      REAL PDENSCO  ! average particle density in coarse mode

C ***  sedimentation velocities

      REAL VSED( NASPCSSED)  ! sedimentation  velocity [ m/s ]

      INTEGER VSNCOR  ! index for coarse mode number
      PARAMETER( VSNCOR = 1 )

      INTEGER VSMCOR  ! index for coarse mass
      PARAMETER( VSMCOR = 2 )

      REAL DCONST2, DCONST3C
      REAL KNCOR                    ! coarse mode Knudsen Number

      REAL BHAT
      PARAMETER( BHAT =  1.246 ) ! Constant from Cunningham slip correction.

      REAL GRAV ! mean gravitational acceleration [ m/sec**2 ]
                     ! NOTE: Value is now mean of polar and equatorial
                     ! values. Source: CRC Handbook (76th Ed) page 14-6.
      PARAMETER ( GRAV = 9.80622 )

C Scalar variables for fixed standard deviations.

      REAL    XXLSGCO          ! log(SGINICO )

      REAL    L2SGINICO        ! log(SGINICO ) ** 2

      REAL    EC1             ! coarse mode exp( log^2( sigmag )/8 )

      REAL    ESC04           ! coarse       "
      SAVE    ESC04

      REAL    ESC08           ! coarse       "
      SAVE    ESC08

      REAL    ESC16           ! coarse       "
      SAVE    ESC16

      REAL    ESC20           ! coarse       "
      SAVE    ESC20

      REAL    ESC28           ! coarse       "
      SAVE    ESC28

      REAL    ESC32           ! coarse       "
      SAVE    ESC32

      REAL    ESC36           ! coarse       "
      SAVE    ESC36

      REAL    ESC64           ! coarse       "
      SAVE    ESC64

      REAL    ESCM20          ! coarse       "
      SAVE    ESCM20

      REAL    ESCM32          ! coarse       "
      SAVE    ESCM32

      REAL        SGINICO        ! fixed l sigma-G for coarse mode
      PARAMETER ( SGINICO = 2.2 )

      LOGICAL FIRSTIME
      SAVE FIRSTIME
      DATA FIRSTIME / .TRUE. /

C----------------------------------------------------------------------

      IF ( FIRSTIME ) THEN

         FIRSTIME = .FALSE.

         XXLSGCO = LOG( SGINICO )
         L2SGINICO = XXLSGCO ** 2

         EC1   = EXP( 0.125 * L2SGINICO )

         ESC04  = EC1 ** 4

         ESC08  = ESC04 * ESC04

         ESC16  = ESC08 * ESC08

         ESC20  = ESC16 * ESC04

         ESC28  = ESC20 * ESC08

         ESC32  = ESC16 * ESC16

         ESC36  = ESC16 * ESC20

         ESC64  = ESC32 * ESC32

         ESCM20 = 1.0 / ESC20

         ESCM32 = 1.0 / ESC32

      END IF

C *** begin code ------------------------------------------------------*

C ***  calculate  sedimentation velocities
c FSB See Section A4 Dry Deposition of Binkowski & Shankar (1995)
      KNCOR = 2.0 * XLM / DGCOR

      DCONST2 = GRAV / ( 18.0 * AMU )

      DCONST3C = DCONST2 * PDENSCO * DGCOR * DGCOR

C *** coarse mode sedimentation velocity for number

      VSED( VSNCOR) = DCONST3C
     &              * ( ESC16 + BHAT * KNCOR * ESC04 )


C *** coarse mode sedimentation velocity for mass

      VSED( VSMCOR) = DCONST3C
     &              * ( ESC64 + BHAT * KNCOR * ESC28 )

      END SUBROUTINE GETVSED
      
c ///////////////////////////////////////////////
      SUBROUTINE VSNdist5( Ni, dgni, xlsgi,
     &                     Nj, dgnj, xlsgj,
     &                     Nc, dgnc, xlsgc,
     &                     dia, vol, num, sfc,
     &                     NPOINTS )

c *** subroutine to generate log-normal number, surface area,
c     and volume  distributions from the
c     total number, geometric mean diameter, and log of
c     the geometric standard deviation for each of the three modes.
c     Aitken mode:       Ni, dgni, xlsgi
c     accumulation mode: Nj, dgnj, xlsgj
c     coarse mode:       Nc, dgnc, xlsgc
c *** the results are returned in arrays
c     dia - diameter
c     vol - volume
c     num - number
c     sfc - surface area
c     which are of dimension NPOINTS.
C     NOTE:  NPOINTS should be evenly divisbile by 4.
c
c     this version coded by Dr. Francis S. Binkowski
c     July 18, 1999.
c
c *** NOTE: This version has xlsgi, xlsgj & xlssgc as inputs
c
c *** This version is developed from VSNdist3.f and now includes
c     the coarse mode, i.e. it is now trimodal.
c
c *** FURTHER NOTE: this version now uses base 10 logs for
c     coni, conj, and conc. This rescales the size plots to the more
c     prevalent usage in the literature.
c
C *** This code  plots the size distributions by interpolating
c     particle diameters, Dp, over the four domains of diameter
c     defined as:
c
c *** Domain one   Dpmin  -> dgni
c     Domain two   dgni   -> dgnj
c     Domain three dgnj   -> dgnc
c     Domain four  dgnc   -> Dpmax

      IMPLICIT  NONE

C *** input:

c *** input units

      real  dgni,dgnj, dgnc    ! modal geometric
                               ! mean diameters [ um ]

      real  Ni,Nj,Nc           ! modal number
                               ! concentrations [ # / cm **3 ]

      real  xlsgi,xlsgj, xlsgc ! natural log of geometric
                               ! standard deviations

      integer NPOINTS          ! the number of points in the
                               ! output arrays

c *** output:

c *** distributions:

      real dia( NPOINTS ),
     &     vol( NPOINTS ),
     &     num( NPOINTS ),
     &     sfc( NPOINTS )  ! standard cgs units

C *** local:
      integer ii, jj, kk

      integer MPOINTS ! The number of diameters assigned to each domain
c *** MPOINTS is set to NPOINTS / below

      real ai, aj, ac, ak,
     &     coni, conj, conc, p, q, r,
     &     Dpmin, Dpmax, xl( 5 ),
     &     n, S, V, Dp, xdp,dxdp

      real pfac

      real pi
      parameter( pi = 3.1415926536 )

      real const1
      parameter( const1 = 0.918599  )
!     const1 = log(10.0) / sqrt( 2.0 * pi )
c     this converts xlsgi, xlsgj, & xlsgc
c     to common logs.

c *** start code

      MPOINTS = NPOINTS / 4

      pfac = 1.0 / float( MPOINTS )

c *** Set up general constants for each mode:

      coni = const1 * Ni / xlsgi
      conj = const1 * Nj / xlsgj
      conc = const1 * Nc / xlsgc

C *** calculate the minimum and maximum diameters
c *** the minimum diameter is three times xlsgi smaller than dgni
c
c     Dpmin = dgni * exp( -3.0 * xlsgi )

C *** changed 10/24/2000 FSB set Dpmin to a constant

      Dpmin = 0.01

c *** Dpmax set to a constant of 10.0  [ um ]
      Dpmax = 10.0

c *** set boundaries of the four domains

      xl( 1 ) = Dpmin
      xl( 2 ) = dgni
      xl( 3 ) = dgnj
      xl( 4 ) = dgnc
      xl( 5 ) = Dpmax

c *** initialize index for storage of results

      ii = 1

c *** loop over the four domains
      do kk = 1, 4

C *** set initial diameter
         xdp = xl( kk )

c *** set difference in diameters
         dxdp = xl( kk+1 ) - xl( kk )

         do jj = 1, MPOINTS

c *** interpolate the diameters to Dp
            ak = pfac * float( jj )
            Dp = xdp + ak * dxdp

C *** calculate arguments of the exponentials at Dp:
            p = log( Dp / dgni ) / xlsgi
            q = log( Dp / dgnj ) / xlsgj
            r = log( Dp / dgnc ) / xlsgc

C *** calculate the exponentials:
            ai = exp( -0.5 * p * p )
            aj = exp( -0.5 * q * q )
            ac = exp( -0.5 * r * r )

C *** calculate the individual values of the distributions at Dp:

C *** number at Dp
            n = ( coni * ai + conj * aj + conc * ac)

C *** surface area at Dp
            S = pi * Dp * Dp * n

C *** Volume at Dp
            V = Dp * S / 6.0

C *** store these values in appropriate arrays
            num( ii ) = n
            sfc( ii ) = S
            vol( ii ) = V
            dia( ii ) = Dp

c *** increment storage index
            ii = ii + 1

         end do ! loop over points

      end do ! loop over four domains

      return
      end     SUBROUTINE VSNdist5

c ///////////////////////////////////////////////////

      SUBROUTINE GETVISBY( NSPCSDA,
     &                     CBLK,AIRRH,
     &                     DCV1, EXT1, DCV2, EXT2,
     &                     DGATK, DGACC, DGCOR,
     &                     XXLSGAT, XXLSGAC, XXLSGCO,
     &                     PMASSAT, PMASSAC,PMASSCO )

c
c *** This routine calculates the Pitchford & Malm visual index,
c     deciview, using the Evans & Fournier extinction with 20 point
c     Gauss_Hermite numerical quadrature to integrate the extincetion
c     over the log normal size distribution.
C     This new method reproduces the results of Willeke and Brockmann
c     very very closely.
c     The Heintzenberg and Baker (h&b) method used previously has been
c     replaced.
c *** This also routine calculates the Pitchford & Malm visual index,
c     deciview, using reconstructed extinction values from the IMPROVE
c     monitoring network
c
c *** references:
c
c     Evans, B.T.N.  and G.R. Fournier, Simple approximations to
c     extinction efficiency valid over all size parameters,
c     Applied Optics, 29, 4666 - 4670.
c
c     Heintzenberg, j. and M. Baker, Applied Optics, vol. 15, no. 5,
c     pp 1178-1181, 1976.
c     correction in Applied Optics August 1976 does not affect this code.
c
c     Sisler, J. Fax dated March 18, 1998 with IMPROVE information.
c
c     Pitchford, M. and W. Malm, Atmos. Environ.,vol 28,no.5,
c     pp 1049-1054, 1994.
c
c     Willeke,K. & J. E. Brockmann, Atmos. Environ., vol.11,
c     pp 995 - 999, 1977.
c
coding history:
c    who           when     what
c ------------------------------------------------------------------
c   F.S. Binkowski 5/9/95
c             coded this version to use the h&b approximation
c             and alfa and c obtained from fits to adt results
c             b was fit from comparisons to willeke & brockmann.
c   F.S. Binkowski 9/12/95  modified code to push j-loop inside.
c   F.S. Binkowski 5/13/97  made models-3 version
c   F.S. Binkowski 4/20/98  changed to Evans and Fournier approach
c                           for extinction
c   F.S. Binkowski 4/20/98  began code for reconstructed method
c   F.S. Binkowski 4/24/98  merged codes for both methods
c   F.S. Binkowski 5/20/98  corrected CONSTL
C   F.S. Binkowski 3/9/99   Modified for variable XXLSGAT and XXLSGAC
C   P.V. Bhave     1/30/08  Updated EXT2 to account for new SOA species
c   J.T. Kelly     4/17/08  Modified for variable XXLSGCO
c ////////
C NOTE: This subroutine is dependent upon the variables defined in the
c       IF( FIRSTIME ) section of aeroproc.f for implementation of
c                      coarse mode contribution.
c ///////

      USE AERO_INFO

      IMPLICIT NONE

      INTEGER NSPCSDA           ! number of species in CBLK
      REAL    CBLK( NSPCSDA  )  ! main array of variables
                                !( INPUT and OUTPUT )
      REAL    AIRRH          !  fractional relative humidity

      REAL    DCV1   ! block deciview (Mie)
      REAL    EXT1   ! block extinction [ km**-1 ] (Mie)

      REAL    DCV2   ! block deciview (Reconstructed)
      REAL    EXT2   ! block extinction [ km**-1 ]
                                  ! (Reconstructed)

C *** modal geometric mean diameters: [ m ]

      REAL    DGATK          ! nuclei mode
      REAL    DGACC          ! accumulation mode
      REAL    DGCOR          ! coarse mode

c *** log of modal geometric standard deviation

      REAL    XXLSGAT         ! Aitken mode
      REAL    XXLSGAC         ! accumulation mode
      REAL    XXLSGCO         ! coarse mode

C *** aerosol properties:

c *** Modal mass concentrations [ ug m**3 ]

      REAL    PMASSAT         ! Aitken mode
      REAL    PMASSAC         ! accumulation mode
      REAL    PMASSCO         ! coarse mode

C *** internal variables:

      INTEGER IRH ! percent realtive humidity as an
                  ! integer used for index

      REAL       CONMIN
      PARAMETER( CONMIN = 1.0E-30 ) ! concentration lower limit

      REAL       LAM ! wavelenght of visible light [ m ]
      PARAMETER( LAM = 0.55E-6 )


      REAL CONSTL
!     PARAMETER( CONSTL = 1.5E3 * PI / LAM  ) !
C *** constant CONSTL corrected 5/20/98
      PARAMETER( CONSTL = 1.0E3 * PI6 / LAM ) ! 1.0e3  to get km**-1

      REAL CONST3
      PARAMETER( CONST3 = PI / LAM ) ! Changed 3/9/99 FSB

      REAL    WFRAC  ! water mass fraction
      REAL    NR, NI ! real and imaginary parts of the refractive index
      REAL    ALFVN, ALFVA, ALFVC ! Mie parameters for modal mass median
                                  ! diameters
      REAL    BBEXT  ! dimensionless extinction coefficient
      REAL    BEXTN, BEXTA, BEXTC
                    ! Modal extinction coefficients [ 1/km ]

      REAL    SCALE  ! factor to rescale units from [ 1/Mm ] to [ 1/km ]
      PARAMETER ( SCALE = 1.0E-03 )
      REAL    FRH ! RH correction factor for sulfate and nitrate aerosols

      REAL    RAY, RAY1 ! standard value for Rayleigh
                     ! extinction [ 1/km ] and its reciprocal.
      PARAMETER( RAY = 0.01 )
      PARAMETER( RAY1 = 1.0 / RAY )

      REAL    humfac(99) ! humidity scaling factors at 1% RH values
         DATA humfac/
     &   1.0000E+00,  1.0000E+00,  1.0000E+00,  1.0000E+00,  1.0000E+00,
     &   1.0000E+00,  1.0000E+00,  1.0000E+00,  1.0000E+00,  1.0000E+00,
     &   1.0000E+00,  1.0000E+00,  1.0000E+00,  1.0001E+00,  1.0001E+00,
     &   1.0004E+00,  1.0006E+00,  1.0024E+00,  1.0056E+00,  1.0089E+00,
     &   1.0097E+00,  1.0105E+00,  1.0111E+00,  1.0115E+00,  1.0118E+00,
     &   1.0122E+00,  1.0126E+00,  1.0130E+00,  1.0135E+00,  1.0139E+00,
     &   1.0173E+00,  1.0206E+00,  1.0254E+00,  1.0315E+00,  1.0377E+00,
     &   1.0486E+00,  1.0596E+00,  1.0751E+00,  1.0951E+00,  1.1151E+00,
     &   1.1247E+00,  1.1343E+00,  1.1436E+00,  1.1525E+00,  1.1615E+00,
     &   1.1724E+00,  1.1833E+00,  1.1955E+00,  1.2090E+00,  1.2224E+00,
     &   1.2368E+00,  1.2512E+00,  1.2671E+00,  1.2844E+00,  1.3018E+00,
     &   1.3234E+00,  1.3450E+00,  1.3695E+00,  1.3969E+00,  1.4246E+00,
     &   1.4628E+00,  1.5014E+00,  1.5468E+00,  1.5992E+00,  1.6516E+00,
     &   1.6991E+00,  1.7466E+00,  1.7985E+00,  1.8549E+00,  1.9113E+00,
     &   1.9596E+00,  2.0080E+00,  2.0596E+00,  2.1146E+00,  2.1695E+00,
     &   2.2630E+00,  2.3565E+00,  2.4692E+00,  2.6011E+00,  2.7330E+00,
     &   2.8461E+00,  2.9592E+00,  3.0853E+00,  3.2245E+00,  3.3637E+00,
     &   3.5743E+00,  3.7849E+00,  4.0466E+00,  4.3594E+00,  4.6721E+00,
     &   5.3067E+00,  5.9412E+00,  6.9627E+00,  8.3710E+00,  9.7793E+00,
     &   1.2429E+01,  1.5078E+01,  1.8059E+01,  2.1371E+01/

         SAVE humfac

C-----------------------------------------------------------------------

C NOTE: In the following calculations, the contribution from the
c        coarse mode is ignored.

c *** calculate the  mass fraction of aerosol water

      WFRAC = MIN( ( CBLK( VH2OAJ) + CBLK( VH2OAI) )
     &            / ( PMASSAT  + PMASSAC  ), 1.0 )

c *** interpolate between "dry" state with m = 1.5 - 0.01i
c     and pure water particle with  m = 1.33 - 0.0i as a function of
c     wfrac

      NR = 1.5 - 0.17 * WFRAC     ! real part of refractive index
      NI = 0.01 * ( 1.0 - WFRAC ) ! imaginary part of refractive index

c *** set up Mie parameters for Volume ( mass median diameter)

      ALFVN = CONST3 * DGATK  *
     &        EXP( 3.0 * XXLSGAT  * XXLSGAT  )

      ALFVA = CONST3 * DGACC  *
     &        EXP( 3.0 * XXLSGAC  * XXLSGAC  )

      ALFVC = CONST3 * DGCOR  *
     &        EXP( 3.0 * XXLSGCO  * XXLSGCO  )

C *** Call extinction routines

      CALL getbext( NR, NI, ALFVN, XXLSGAT, BBEXT )
      BEXTN = CONSTL * CBLK( VAT3) * BBEXT

      CALL getbext( NR, NI, ALFVA, XXLSGAC, BBEXT )
      BEXTA = CONSTL * CBLK( VAC3) * BBEXT

!     CALL getbext(NR, NI, ALFVC, XXLSGCO, BBEXT )
!     BEXTC = CONSTL * CBLK( VCOR3 ) * BBEXT
      BEXTC = 0.0

      EXT1  = BEXTN + BEXTA + RAY

      DCV1  = 10.0 * LOG ( EXT1 * RAY1 )

c     note if EXT1 < 0.01 then DCV1 is negative.
c     this implies that visual range is greater than the Rayleigh limit.
c     The definition of deciviews is based upon the Rayleigh limit
c     being the maximum visual range
c     thus, set a floor of 0.0 on DCV1.

      DCV1  = MAX( 0.0,DCV1 )

c *** begin  IMPROVE reconstructed method

      IRH = INT( 100.0 * AIRRH  ) ! truncate relative humidity to
                                  ! nearest integer
      IRH = MIN( 99, IRH)         ! set maximum value on IRH
      IRH = MAX( 1, IRH)          ! set minimum value on IRH

      FRH = humfac( IRH )         ! set humidity correction

C *** NOTE in the following the fine primary mass "other" is
c     treated as though it were fine mass soil.

      EXT2  = SCALE * (
     &            3.0 * FRH * ( CBLK( VSO4AI ) + CBLK( VSO4AJ )
     &                      +   CBLK( VNO3AI ) + CBLK( VNO3AJ )
     &                      +   CBLK( VNH4AI ) + CBLK( VNH4AJ ) )
     &         + 4.0 * (        CBLK( VALKJ  ) + CBLK( VXYL1J )
     &                      +   CBLK( VXYL2J ) + CBLK( VXYL3J )
     &                      +   CBLK( VTOL1J ) + CBLK( VTOL2J )
     &                      +   CBLK( VTOL3J)  + CBLK( VBNZ1J )
     &                      +   CBLK( VBNZ2J)  + CBLK( VBNZ3J )
     &                      +   CBLK( VTRP1J)  + CBLK( VTRP2J )
     &                      +   CBLK( VISO1J)  + CBLK( VISO2J )
     &                      +   CBLK( VISO3J)  + CBLK( VSQTJ )
     &                      +   CBLK( VOLGAJ)  + CBLK( VOLGBJ )
     &                      +   CBLK( VORGCJ)
     &                      +   CBLK( VORGPAI ) + CBLK( VORGPAJ ) )
     &         + 10.0 * (       CBLK( VECI )   +  CBLK( VECJ) )
     &         + 1.0 * (        CBLK( VP25AI ) + CBLK( VP25AJ) )
!    &         + 0.6 * (        CBLK( VSOILA ) + CBLK( VANTHA) )
     &                                                             )
     &        + RAY

      DCV2  = 10.0 * LOG ( EXT2  * RAY1 )

c     note if EXT2 < RAY then DCV2 is negative.
c     this implies that visual range is greater than the Rayleigh limit.
c     The definition of deciviews is based upon the Rayleigh limit
c     being the maximum visual range
c     thus, set a floor of 0.0 on BLKDCV.

      DCV2  = MAX( 0.0, DCV2 )

      RETURN
      END SUBROUTINE GETVISBY

c ************************************************
      subroutine getbext(nr, ni, alfv, xlnsig, bext)

c     calculates the extinction coefficient normalized by wavelength
c     and total particle volume concentration for a log normal
c     particle distribution with the logarithm of the
c     geometric standard deviation given by xlnsig.
c
c *** does gauss-hermite quadrature of Qext / alfa
c     over log normal distribution
c     using 20 symmetric points
c
      implicit none

      real nr, ni  ! indices of refraction
      real alfv    ! Mie parameter for dgv
      real xlnsig  ! log of geometric standard deviation
      real bext    ! normalized extinction coefficient
      real aa, aa1 ! see below for definition

      real alfaip, alfaim   ! Mie parameters at abscissas

      real xxqalf  ! function to calculate the extinction ceofficient
      real qalfip, qalfim   ! extinction efficiencies at abscissas

      real pi
      parameter( pi = 3.14159265 )

      real sqrtpi
      parameter( sqrtpi = 1.772454 )

      real sqrtpi1
      parameter( sqrtpi1 = 1.0 / sqrtpi )

      real sqrt2
      parameter( sqrt2 = 1.414214 )

      real three_pi_two
      parameter( three_pi_two = 3.0 * pi / 2.0 )

      real const
      parameter( const = three_pi_two * sqrtpi1 )

      integer i
      real sum, xi,wxi,xf

      integer n    ! one-half the number of abscissas
      parameter ( n = 10 )
      real ghxi( n ) ! Gauss-Hermite abscissas
      real ghwi( n ) ! Gauss-Hermite weights

c *** the following weights and abscissas are from abramowitz and
c     stegun, page 924
c *** tests show that 20 point is adquate.

      data ghxi / 0.245341, 0.737474, 1.234076, 1.738538, 2.254974,
     &            2.788806, 3.347855, 3.944764, 4.603682, 5.387481 /

      data ghwi/ 4.622437e-1, 2.866755e-1, 1.090172e-1, 2.481052e-2,
     &           3.243773e-3, 2.283386e-4, 7.802556e-6, 1.086069e-7,
     &           4.399341e-10, 2.229394e-13 /

      sum = 0.0

      aa = 1.0 / ( sqrt2 * xlnsig )
      aa1 = sqrt2 * xlnsig ! multiplication cheaper
                           ! than another division

      do i = 1, n

         xi      = ghxi( i )
         wxi     = ghwi( i)
         xf      = exp( xi * aa1 )
         alfaip  = alfv * xf
         alfaim  = alfv / xf
         qalfip  = xxqalf( alfaip, nr, ni )
         qalfim  = xxqalf( alfaim, nr, ni )

         sum = sum + wxi * ( qalfip + qalfim )

      end do ! i

c fsb      bext = const * aa * sum
      bext = const * sum ! corrected 07/21/2000 FSB
                         ! found by Rokjin Park

      return
      end subroutine getbext

c ________________________
      real function xxqalf( alfa, nr, ni )

c *** compute the extinction efficiency divided by the Mie parameter
c     reference:
c     Evans, B.T.N.  and G.R. Fournier, Simple approximations to
c     extinction efficiency valid over all size parameters,
C     Applied Optics, 29, 4666 - 4670.

      implicit none

      real alfa
      real nr, ni  ! real and imaginary parts of index of refraction

      real qextray
      real qextadt
      real qextef
      real tt        !  edge effect factor
      real mu, mum1  !  exponents in formula
      real aa        !  first coefficient in mu
      real gg        !  second coefficient in mu
      real nrm1, sqrtni
      real alfm23   ! functions of alfa (mie parameter)
      real three5, three4, two3
      parameter( three5    = 3.0 / 5.0   ,
     &           three4    = 3.0 / 4.0   ,
     &           two3      = 2.0 / 3.0   )

      nrm1   = nr - 1.0
      sqrtni = sqrt (ni )

      call adtqext( alfa, nr, ni, qextadt )
      call pendrfx( alfa, nr, ni, qextray )

      if ( alfa .gt. 0.5 ) then

         alfm23 = 1.0 / alfa ** two3

         tt     = 2.0 - exp( -alfm23 )

         aa     = 0.5 + ( nrm1 - two3 * sqrtni - 0.5 * ni ) +
     &           ( nrm1 + two3 * ( sqrtni - 5.0  * ni )  ) ** 2

         gg     = three5 - three4 * sqrt ( nrm1) + 3.0 * nrm1 ** 4 +
     &            25.0 * ni / ( 6.0 * ni + 5.0 * nrm1 )

         mu     = aa + gg / alfa
         mum1   = - 1.0 / mu

         qextef = qextray *
     &           ( 1.0 + (qextray /( qextadt * tt)) ** mu ) ** mum1

      else

         qextef = qextray ! Use Rayleigh extinction for
                           ! really small alfa's

      end if ! check on alfa

      xxqalf = qextef / alfa

      return
      end function xxqalf

c ______________________________________
      subroutine adtqext( alfa, nr, ni, QEXT )

c *** van de Hulst approximation for QEXT.
c *** This approximation is known as Anomalous Diffraction Theory (ADT)
c
c *** originally coded by Dr Francis  S. Binkowski,
c     AMAB/MD/ESRL RTP,N.C. 27711 28 July 1977.
c     corrected 7/19/90 by fsb.
c     revised 1/8/98 by FSB
c
C *** reference:
c     van de Hulst- Light Scattering by Small Particles,
c     Dover,1981 page 179. Original edition was Wiley, 1957.

      implicit none
      real alfa   ! Mie parameter
      real nr, ni ! real and imaginary parts of the index of refraction
      real QEXT   ! extinction efficiency for a sphere
      real z, tanb, b, cos2b, v1, v2, x, expmx, expm2x, cs1, cs2
      real twob, cosb
      real nr1

      nr1    = nr - 1.0
      z     = 2.0 * alfa * nr1
      tanb  = ni/nr1
      b     = atan(tanb)
      cosb  = cos(b)
      twob  = 2.0 * b
      cos2b = cos(twob)
      v1     = 5.0 * nr1
      v2     = 4.08 / (1.0 + 3.0 * tanb)
      x      = z * tanb
      expmx  = exp( -x )
      expm2x = exp( -2.0 * x )
      cs1    = cosb / z
      cs2    = cs1 * cs1

      QEXT   = 2.0 - 4.0 * cs1 * expmx * sin( z - b) +
     &         4.0 * cs2 * ( cos2b - expmx * cos(z - twob))
      return
      end subroutine adtqext

c __________________________________________________
      subroutine pendrfx( alfa, nr, ni, QEXT )

c *** calculates the Mie efficiencies for extinction, scattering and
c     absorption using Penndorf's approximations for small
c     values of alfa.
c
c  input:
c       nr        the real part of the refractive index.
c       ni        the imaginary part of the refractive index
c       alfa      mie parameter
c
c
c  output:
c       QEXT      extinction efficiency
c
c *** reference:
c       Penndorf, r., Scattering and extinction coefficients for small
c       aerosols, J. Atmos. Sci., 19, p 193, 1962.
c 
c *** coded by Dr Francis  S.  Binkowski,
c       AMAB/MD/ESRL RTP,N.C. 27711 28 July 1977.
c       corrected 7/19/90 by FSB
c       modified 30 september 1992 by FSB
c       modified 1/6/98 by FSB

      implicit none

      real alfa, nr, ni
      real QEXT
      real alf2,alf3,alf4

      real a1,a2,a3
      real xnr,xni,xnr2,xni2,xnri,xnri2,xnrmi
      real xri,xri2,xri36,xnx,xnx2
      real z1,z12,z2,xc1

      xnr   = nr
      xni   = ni
      xnr2  = xnr   * xnr
      xni2  = xni   * xni
      xnri  = xnr2  + xni2
      xnri2 = xnri  * xnri
      xnrmi = xnr2  - xni2
      xri   = xnr   * xni
      xri2  = xri   * xri
      xri36 = 36.0  * xri2
      xnx   = xnri2 + xnrmi - 2.0
      xnx2  = xnx   * xnx

      z1    = xnri2 + 4.0 * xnrmi + 4.0
      z12   = z1    * z1
      z2    = 4.0   * xnri2 + 12.0 * xnrmi + 9.0
      xc1   = 8.0   / ( 3.0 * z12 )

      alf2  = alfa  * alfa
      alf3  = alfa  * alf2
      alf4  = alfa  * alf3

      a1    = 24.0  * xri / z1

      a2    = 4.0   * xri / 15.0 + 20.0 * xri / ( 3.0 * z2 ) +
     &        4.8   * xri * ( 7.0 * xnri2 +
     &        4.0   * ( xnrmi - 5.0 ) ) / z12

      a3    = xc1   * ( xnx2 - xri36 )

      QEXT  = a1    * alfa + a2 * alf3 + a3 * alf4

      return
      end subroutine pendrfx

      ! end of visibility codes
c //////////////////////////////////////

       SUBROUTINE GETVDEP( N_AE_DEP_SPC,
     &                     AIRTEMP, AIRDENS,
     &                     XLM, AMU,
     &                     WSTAR, USTAR, RA,
     &                     DGATK, DGACC, DGCOR,
     &                     XXLSGAT, XXLSGAC,
     &                     PDENSAT, PDENSAC, PDENSCO,
     &                     VDEP )

c *** calculate deposition velocity for Aitken, accumulation, and
c     coarse modes.
c     Reference:
c     Binkowski F. S., and U. Shankar, The regional particulate
c     model 1. Model description and preliminary results.
c     J. Geophys. Res., 100, D12, 26191-26209, 1995.

      IMPLICIT NONE

      INTEGER N_AE_DEP_SPC

C *** arguments:

c *** input

C Meteorological information in blocked arays:

      REAL AIRTEMP   ! Air temperature [ K ]
      REAL AIRDENS   ! Air density  [ kg m^-3 ]

C *** atmospheric properties

      REAL XLM    ! atmospheric mean free path [ m ]
      REAL AMU    ! atmospheric dynamic viscosity [ kg/m s ]

c *** Planetary boundary laryer (PBL) variables:

      REAL WSTAR  ! convective velocity scale [ m s**-1 ]
      REAL USTAR  ! friction velocity [ m s**-1 ]
      REAL RA     ! aerodynamic resistance [ s m**-1 ]

C *** aerosol properties:

C *** modal geometric mean diameters: [ m ]

      REAL DGATK     ! Atken mode
      REAL DGACC     ! accumulation mode
      REAL DGCOR     ! coarse mode

c *** log of modal geometric standard deviations

      REAL XXLSGAT         ! Aitken mode
      REAL XXLSGAC         ! accumulation mode

c *** average modal particle densities  [ kg/m**3 ]

      REAL PDENSAT         ! Aitken mode
      REAL PDENSAC         ! accumulation mode
      REAL PDENSCO         ! coarse mode

C *** Output

      REAL VDEP( N_AE_DEP_SPC ) ! deposition  velocity [ m/s ]

C *** internal:

      INTEGER VDNATK            ! Aitken mode number
      PARAMETER ( VDNATK = 1 )

      INTEGER VDNACC            ! accumulation mode number
      PARAMETER ( VDNACC = 2 )

      INTEGER VDNCOR            ! coarse mode number
      PARAMETER ( VDNCOR = 3 )

      INTEGER VDMATK            ! Aitken mode mass
      PARAMETER ( VDMATK = 4 )

      INTEGER VDMACC           !  accumulation mode mass
      PARAMETER ( VDMACC = 5 )

      INTEGER VDMCOR            ! coarse mode mass
      PARAMETER ( VDMCOR = 6 )

      INTEGER VDSATK           ! Aitken mode surface area
      PARAMETER ( VDSATK = 7 )

      INTEGER VDSACC           ! accumulation mode surface area
      PARAMETER ( VDSACC = 8 )

C model Knudsen numbers

      REAL KNATK   ! Aitken mode Knudsen number
      REAL KNACC   ! accumulation "
      REAL KNCOR   ! coarse mode

C modal particle diffusivities for number and 3rd moment, or mass:

      REAL DCHAT0AT, DCHAT0AC, DCHAT0C
      REAL DCHAT2AT, DCHAT2AC
      REAL DCHAT3AT, DCHAT3AC, DCHAT3C

C modal sedimentation velocities for number, surface area,
C and 3rd moment, or mass:

      REAL VGHAT0AT, VGHAT0AC, VGHAT0C
      REAL VGHAT2AT, VGHAT2AC
      REAL VGHAT3AT, VGHAT3AC, VGHAT3C

      REAL DCONST1, DCONST1AT, DCONST1AC, DCONST1C
      REAL DCONST2, DCONST3AT, DCONST3AC, DCONST3C
      REAL SC0AT, SC0AC, SC0C  ! Schmidt numbers for number
      REAL SC2AT, SC2AC        ! Schmidt numbers for 2ATD MOMENT
      REAL SC3AT, SC3AC, SC3C  ! Schmidt numbers for 3rd moment
      REAL ST0AT, ST0AC        ! Stokes numbers for number
      REAL ST2AT, ST2AC        ! Stokes numbers for 2nd moment
      REAL ST3AT, ST3AC        ! Stokes numbers for 3rd moment
      REAL RD0AT, RD0AC, RD0C  ! canopy resistance for number
      REAL RD2AT, RD2AC        ! canopy resistance for 2nd moment
      REAL RD3AT, RD3AC, RD3C  ! canopy resisteance for 3rd moment
      REAL UTSCALE           ! scratch function of USTAR and WSTAR
      REAL NU                ! kinematic viscosity [ m**2 s**-1 ]
      REAL USTFAC            ! scratch function of USTAR, NU, and GRAV
      REAL       BHAT        ! Constant from Cunningham slip correction
      PARAMETER( BHAT = 1.246 )

      REAL       PI ! PI (single precision 3.141593)
      PARAMETER( PI = 3.141593 )

      REAL       PI6           ! PI/6
      PARAMETER( PI6 = PI / 6.0  )

      REAL       THREEPI       !  3*PI
      PARAMETER( THREEPI = 3.0 * PI )

      REAL       ONE3          !  1/3
      PARAMETER( ONE3 = 1.0 / 3.0 )

      REAL       TWO3          !  2/3
      PARAMETER( TWO3 = 2.0 / 3.0 )

      REAL       AVO           ! Avogadro's Constant [ 1/mol ]
      PARAMETER( AVO = 6.0221367 E23  )

      REAL       RGASUNIV      ! universal gas constant [ J/mol-K ]
      PARAMETER( RGASUNIV = 8.314510  )

      REAL       BOLTZ         ! Boltzmann's Constant [ J/K]
      PARAMETER( BOLTZ = RGASUNIV / AVO )

      REAL       GRAV          ! mean gravitational acceleration [ m/sec**2 ]
C FSB                          NOTE: Value is now mean of polar and equatorial
                               ! values. Source: CRC Handbook (76th Ed) page 14-6.
      PARAMETER( GRAV = 9.80622 )

C Scalar variables for fixed standard deviations.

      REAL    XXLSGCO          ! log(SGINICO )

      REAL    L2SGINICO        ! log(SGINICO ) ** 2

      REAL    EC1              ! coarse mode exp( log^2( sigmag )/8 )

      REAL    ESC04            ! coarse       "
      SAVE    ESC04

      REAL    ESC08            ! coarse       "
      SAVE    ESC08

      REAL    ESC16            ! coarse       "
      SAVE    ESC16

      REAL    ESC20            ! coarse       "
      SAVE    ESC20

      REAL    ESC28            ! coarse       "
      SAVE    ESC28

      REAL    ESC32            ! coarse       "
      SAVE    ESC32

      REAL    ESC36            ! coarse       "
      SAVE    ESC36

      REAL    ESC64            ! coarse       "
      SAVE    ESC64

      REAL    ESCM20           ! coarse       "
      SAVE    ESCM20

      REAL    ESCM32           ! coarse       "
      SAVE    ESCM32

      REAL       SGINICO       ! fixed l sigma-G for coarse mode
      PARAMETER( SGINICO = 2.2 )

      REAL       DGINIAT       ! initial mean diam. for Aitken mode [ m ]
      PARAMETER( DGINIAT = 0.01E-6 )

C Scalar variables for  VARIABLE standard deviations.

      REAL    L2SGAT, L2SGAC  ! see usage

      REAL    EAT1         ! Aitken mode exp( log^2( sigmag )/8 )
      REAL    EAC1         ! accumulation mode exp( log^2( sigmag )/8 )

      REAL    ESAT04
      REAL    ESAC04

      REAL    ESAT08
      REAL    ESAC08

      REAL    ESAT12
      REAL    ESAC12

      REAL    ESAT16
      REAL    ESAC16

      REAL    ESAT20
      REAL    ESAC20

      REAL    ESAT28
      REAL    ESAC28

      REAL    ESAT32
      REAL    ESAC32

      REAL    ESAT36
      REAL    ESAC36

      REAL    ESAT48
      REAL    ESAC48

      REAL    ESAT64
      REAL    ESAC64

      REAL    ESATM12
      REAL    ESACM12

      REAL    ESATM16
      REAL    ESACM16

      REAL    ESATM20
      REAL    ESACM20

      REAL    ESATM32
      REAL    ESACM32

      LOGICAL FIRSTIME
      DATA FIRSTIME / .TRUE. /
      SAVE FIRSTIME

C-----------------------------------------------------------------------

      IF ( FIRSTIME ) THEN

         FIRSTIME = .FALSE.

         XXLSGCO = LOG( SGINICO )
         L2SGINICO = XXLSGCO * XXLSGCO
         EC1    = EXP( 0.125 * L2SGINICO )
         ESC04  = EC1 ** 4
         ESC08  = ESC04 * ESC04
         ESC16  = ESC08 * ESC08
         ESC20  = ESC16 * ESC04
         ESC28  = ESC20 * ESC08
         ESC32  = ESC16 * ESC16
         ESC36  = ESC16 * ESC20
         ESC64  = ESC32 * ESC32
         ESCM20 = 1.0 / ESC20
         ESCM32 = 1.0 / ESC32

      END IF

      KNATK = 2.0 * XLM / DGATK
      KNACC = 2.0 * XLM / DGACC
      KNCOR = 2.0 * XLM / DGCOR

C *** Calculate functions of variable standard deviation.

      L2SGAT = XXLSGAT * XXLSGAT
      L2SGAC = XXLSGAC * XXLSGAC

      EAT1   = EXP( 0.125 * L2SGAT )
      EAC1   = EXP( 0.125 * L2SGAC )

      ESAT04  = EAT1 ** 4
      ESAC04  = EAC1 ** 4

      ESAT08  = ESAT04 * ESAT04
      ESAC08  = ESAC04 * ESAC04

      ESAT12  = ESAT04 * ESAT08
      ESAC12  = ESAC04 * ESAC08

      ESAT16  = ESAT08 * ESAT08
      ESAC16  = ESAC08 * ESAC08

      ESAT20  = ESAT16 * ESAT04
      ESAC20  = ESAC16 * ESAC04

      ESAT28  = ESAT20 * ESAT08
      ESAC28  = ESAC20 * ESAC08

      ESAT32  = ESAT16 * ESAT16
      ESAC32  = ESAC16 * ESAC16

      ESAT36  = ESAT16 * ESAT20
      ESAC36  = ESAC16 * ESAC20

      ESAT48  = ESAT36 * ESAT12
      ESAC48  = ESAC36 * ESAC12

      ESAT64  = ESAT32 * ESAT32
      ESAC64  = ESAC32 * ESAC32

C *** calculate inverses:

      ESATM12 = 1.0 / ESAT12
      ESACM12 = 1.0 / ESAC12

      ESATM16 = 1.0 / ESAT16
      ESACM16 = 1.0 / ESAC16

      ESATM20 = 1.0 / ESAT20
      ESACM20 = 1.0 / ESAC20

      ESATM32 = 1.0 / ESAT32
      ESACM32 = 1.0 / ESAC32

      DCONST1 = BOLTZ * AIRTEMP / ( THREEPI * AMU )
      DCONST1AT = DCONST1 / DGATK
      DCONST1AC = DCONST1 / DGACC
      DCONST1C = DCONST1 / DGCOR
      DCONST2  = GRAV / ( 18.0 * AMU )
      DCONST3AT = DCONST2 * PDENSAT * DGATK * DGATK
      DCONST3AC = DCONST2 * PDENSAC * DGACC * DGACC
      DCONST3C  = DCONST2 * PDENSCO * DGCOR * DGCOR

C      Aitken mode

      DCHAT0AT  = DCONST1AT * ( ESAT04  + BHAT * KNATK * ESAT16 )
      DCHAT2AT  = DCONST1AT * ( ESATM12 + BHAT * KNATK * ESATM16 )
      DCHAT3AT  = DCONST1AT * ( ESATM20 + BHAT * KNATK * ESATM32 )
      VGHAT0AT  = DCONST3AT * ( ESAT16  + BHAT * KNATK * ESAT04 )
      VGHAT2AT  = DCONST3AT * ( ESAT48  + BHAT * KNATK * ESAT20 )
      VGHAT3AT  = DCONST3AT * ( ESAT64  + BHAT * KNATK * ESAT28 )

C     accumulation mode

      DCHAT0AC  = DCONST1AC * ( ESAC04  + BHAT * KNACC * ESAC16 )
      DCHAT2AC  = DCONST1AC * ( ESACM12 + BHAT * KNACC * ESACM16 )
      DCHAT3AC  = DCONST1AC * ( ESACM20 + BHAT * KNACC * ESACM32 )
      VGHAT0AC  = DCONST3AC * ( ESAC16  + BHAT * KNACC * ESAC04 )
      VGHAT2AC  = DCONST3AC * ( ESAC48  + BHAT * KNACC * ESAC20 )
      VGHAT3AC  = DCONST3AC * ( ESAC64  + BHAT * KNACC * ESAC28 )

C     coarse mode

      DCHAT0C  = DCONST1C * ( ESC04  + BHAT * KNCOR * ESC16 )
      DCHAT3C  = DCONST1C * ( ESCM20 + BHAT * KNCOR * ESCM32 )
      VGHAT0C  = DCONST3C * ( ESC16  + BHAT * KNCOR * ESC04 )
      VGHAT3C  = DCONST3C * ( ESC64  + BHAT * KNCOR * ESC28 )

c now calculate the deposition  velocities

      NU = AMU / AIRDENS
      USTFAC = USTAR * USTAR / ( GRAV * NU )
      UTSCALE = USTAR + 0.24 * WSTAR * WSTAR / USTAR

C first do 0th moment for the deposition of number number

C  Aitken mode

      SC0AT = NU / DCHAT0AT
      ST0AT = MAX( VGHAT0AT * USTFAC, 0.01 )
      RD0AT = 1.0 / ( UTSCALE *
     &              ( SC0AT ** ( -TWO3 ) + 10.0 ** ( -3.0 / ST0AT ) ) )

      VDEP( VDNATK ) = VGHAT0AT + 1.0 / (
     &                 RA + RD0AT + RD0AT * RA * VGHAT0AT
     &                                  )

C accumulation mode

      SC0AC = NU / DCHAT0AC
      ST0AC = MAX ( VGHAT0AC * USTFAC, 0.01 )
      RD0AC = 1.0 / ( UTSCALE *
     &              ( SC0AC ** ( -TWO3 ) + 10.0 ** ( -3.0 / ST0AC ) ) )

      VDEP( VDNACC ) = VGHAT0AC + 1.0 / (
     &                 RA + RD0AC + RD0AC * RA * VGHAT0AC
     &                                  )

c coarse mode

      SC0C = NU / DCHAT0C

      RD0C = 1.0 / ( UTSCALE * ( SC0C ** ( -TWO3 ) ) ) ! eliminate impaction term

      VDEP( VDNCOR ) = VGHAT0C + 1.0 / (
     &                 RA + RD0C + RD0C * RA * VGHAT0C
     &                                 )

C now do 2nd moment for the deposition of surface area

C  Aitken mode

      SC2AT = NU / DCHAT2AT
      ST2AT = MAX( VGHAT2AT * USTFAC, 0.01 )
      RD2AT = 1.0 / ( UTSCALE *
     &              ( SC2AT ** ( -TWO3 ) + 10.0 ** ( -3.0 / ST2AT ) ) )

      VDEP( VDSATK ) = VGHAT2AT + 1.0 / (
     &                 RA + RD2AT + RD2AT * RA * VGHAT2AT
     &                                  )

C accumulation mode

      SC2AC = NU / DCHAT2AC
      ST2AC = MAX( VGHAT2AC * USTFAC , 0.01 )
      RD2AC = 1.0 / ( UTSCALE *
     &              ( SC2AC ** ( -TWO3 ) + 10.0 ** ( -3.0 / ST2AC ) ) )

      VDEP( VDSACC ) =  VGHAT2AC + 1.0 / (
     &                  RA + RD2AC + RD2AC * RA * VGHAT2AC
     &                                    )

C now do 3rd moment for the deposition of mass

C  Aitken mode

      SC3AT = NU / DCHAT3AT
      ST3AT = MAX( VGHAT3AT * USTFAC, 0.01 )
      RD3AT = 1.0 / ( UTSCALE *
     &              ( SC3AT ** ( -TWO3 ) + 10.0 ** ( -3.0 / ST3AT ) ) )

      VDEP( VDMATK ) = VGHAT3AT + 1.0 / (
     &                 RA + RD3AT + RD3AT * RA * VGHAT3AT
     &                                  )

C accumulation mode

      SC3AC = NU / DCHAT3AC
      ST3AC = MAX( VGHAT3AC * USTFAC , 0.01 )
      RD3AC = 1.0 / ( UTSCALE *
     &              ( SC3AC ** ( -TWO3 ) + 10.0 ** ( -3.0 / ST3AC ) ) )

      VDEP( VDMACC ) =  VGHAT3AC + 1.0 / (
     &                  RA + RD3AC + RD3AC * RA * VGHAT3AC
     &                                   )

c coarse mode

      SC3C = NU / DCHAT3C

      RD3C = 1.0 / ( UTSCALE * ( SC3C ** ( -TWO3 ) ) ) ! eliminate impaction term

      VDEP( VDMCOR ) = VGHAT3C + 1.0 / (
     &                 RA + RD3C + RD3C * RA * VGHAT3C
     &                                 )

      RETURN

      END  SUBROUTINE GETVDEP
c /////////////////////////////////////////////////////////////////////

c /////////////////////////////////////////////////////////////////////

      SUBROUTINE VOLINORG( NSPCSDA, CBLK, DT, COL, ROW, LAYER, AIRPRS, AIRTEMP,
     &                     AIRRH, DV_SO4, MINM2, SO4RATE, 
     &                     PMASSAT, PMASSAC, PMASSCO,
     &                     PDENSAT, PDENSAC, PDENSCO,
     &                     DGATK, DGACC, DGCOR,
     &                     XXLSGAT, XXLSGAC, XXLSGCO, 
     &                     CGR, M3_WET_FLAG, LOGDEV )

C *** Calculates the partitioning of inorganic components (CL,NO3,NH4,SO4)
C     between the aerosol and gas phase over the operator synchronization
C     timestep (DT). Partitioning is calculated using the Hybrid approach,
C     where dynamic mass transfer of species to/from the coarse mode is
C     calculated using multiple sub-operator time steps (TSTEP) and the
C     fine modes are equilibrated with the gas phase. The mass transfer
C     calculations are made using the H+ flux-limiting approach of Pilinis
C     et al. (2000). If 'OPTIONFLAG' is not set to 'Hybrid', the mass
C     transfer calculations for the coarse mode are skipped, and the fine
C     modes are equilibrated with the gas phase.

C     Returns updated volatile inorganic species concentrations in the gas
C     and particulate phase, and the aerosol modal parameters

C *** Revision history: 4/07 - Moved HCOND3 and NEWPART3 calls from 
C                              AEROPROC to this subroutine for 
C                              mass transfer calculation  
C     15 Jul 08, J.Young, P.Bhave: increased cutoff to hybrid from .01 to .05 ug/m**3
C                J.Young: change 'OPTIONFLAG' to just a logical variable, 'Hybrid'

C *** References
C 1. Pilinis C, Capaldo KP, Nenes A, Pandis SN (2000) MADM - A new
C    multicomponent aerosol dynamics model. AEROSOL SCIENCE AND TECHNOLOGY.
C    32(5):482-502
C
C 2. Capaldo KP, Pilinis C, Pandis SN (2000) A computationally efficient hybrid
C    approach for dynamic gas/aerosol transfer in air quality models. ATMOSPHERIC
C    ENVIRONMENT. 34(21):3617-3627

      USE AERO_INFO    ! Module containing CBLK indices and 
                       ! several constants
      IMPLICIT NONE

C *** ARGUMENTS

      INTEGER NSPCSDA         ! number of variables in CBLK
      REAL    CBLK( NSPCSDA ) ! main array of variables
      REAL    DT              ! time step [sec]
      INTEGER COL             ! grid column index
      INTEGER ROW             ! grid row index
      INTEGER LAYER           ! model layer index
      REAL    AIRPRS          ! Air pressure in [ Pa ]
      REAL    AIRTEMP         ! Air temperature [ K ]
      REAL    AIRRH           ! Fractional relative humidity
      REAL    DV_SO4          ! molecular diffusivity of H2SO4 vapor 
                              ! after correction for ambient conditions
      REAL    MINM2( NMODES ) ! min 2nd moment in each mode [m**2/m**3]
      REAL    SO4RATE         ! Gas-phase sulfate production rate 
                              !  [ ug / m**3 s ]

      REAL    DGATK           ! Aitken mode geometric mean diameter [m]
      REAL    DGACC           ! accumulation mode geometric mean diam [m]
      REAL    DGCOR           ! coarse mode geometric mean diameter [m]

      REAL    XXLSGAT         ! natural log of geometric standard
      REAL    XXLSGAC         !  deviations of each mode
      REAL    XXLSGCO         !

      REAL    PMASSAT         ! Aitken mode mass concentration [ ug/m**3 ]
      REAL    PMASSAC         ! accumulation mode mass conc [ ug/m**3 ]
      REAL    PMASSCO         ! coarse mode mass concentration [ ug/m**3 ]

      REAL    PDENSAT         ! Aitken mode particle density [ kg / m**3 ]
      REAL    PDENSAC         ! accumulation mode density [ kg / m**3 ]
      REAL    PDENSCO         ! coarse mode particle density [ kg / m**3 ]

      REAL( 8 ) :: CGR( NMODES-1 ) ! 3rd moment SO4 growth rate [m^3/m^3-s]

C *** Logical flags 

      LOGICAL M3_WET_FLAG  ! flag to include water in GETPAR update

C *** PARAMETERS 


      REAL( 8 ), PARAMETER ::      ! Mol. wt ratios NH3/NH4, HNO3/NO3, HCL/CL
     &           NH3RAT  = MWNH3  / MWNH4,
     &           HNO3RAT = MWHNO3 / MWNO3,
     &           HCLRAT  = MWHCL  / MWCL

      REAL( 8 ), PARAMETER ::     ! Mol. wt. ratio of SO4/H2SO4
     &           H2SO4RATM1 = MWSO4 / MWH2SO4

      REAL( 8 ), PARAMETER ::     ! real*8 mol wts [g/mol]
     &           MWSO4R8 = MWSO4,
     &           MWCLR8  = MWCL,
     &           MWNO3R8 = MWNO3,
     &           MWNH4R8 = MWNH4,
     &           MWNAR8  = MWNA

      REAL( 8 ), PARAMETER ::     ! used in unit conversions ug -> m**3 / m**3 (REAL*8)
     &           FAERSO4R8  = FAERSO4,
     &           FAERNAR8   = FAERNA,
     &           FAERNH4R8  = FAERNH4,
     &           FAERNO3R8  = FAERNO3,
     &           FAERCLR8   = FAERCL, 
     &           FAERNH3R8  = FAERNH3,
     &           FAERHNO3R8 = FAERHNO3,
     &           FAERHCLR8  = FAERHCL,
     &           FAERH2OR8  = FAERH2O
              
      REAL( 8 ), PARAMETER ::
     &           SO4FACR8  = SO4FAC,
     &           NH4FACR8  = NH4FAC,
     &           NO3FACR8  = NO3FAC,
     &           SEASFACR8 = SEASFAC

      REAL, PARAMETER :: ALPHSULF = 0.1 ! Accommodation coefficient for sulfuric acid
                                        ! see Capaldo et al. (2000)

C *** LOCAL VARIABLES 

C *** inputs to subroutine HCOND3

      REAL( 8 ), SAVE :: TWO3D
      REAL,      SAVE :: COFCBAR_SO4 ! Temperature-independent coefficients
                          ! for caculating molecular vel [m/s]
                          ! = sqrt((8*Rgas)/(pi*MW)) 
      REAL    CBAR_SO4    ! molecular velocity of H2SO4                      

      REAL( 8 ) ::  AM0AT, AM0AC, AM0CO ! zeroth moments
      REAL( 8 ) ::  AM1AT, AM1AC, AM1CO ! first moments
      REAL( 8 ) ::  AM2AT, AM2AC, AM2CO ! second moments

C *** outputs from HCOND3: size-dependent term in the condensational-growth 
C     expressions defined in Equations A13-A14 of [Binkowski & Shankar,1995]

      REAL( 8 ) :: FCONCAT_SO4( 2 )  ! Aitken mode 2nd and 3rd moments
      REAL( 8 ) :: FCONCAC_SO4( 2 )  ! Accumulation mode 2nd and 3rd moments
      REAL( 8 ) :: FCONCCO_SO4( 2 )  ! Coarse mode 2nd and 3rd moments
      REAL( 8 ) :: FCONCM1_SO4       ! reciprocals of total SO4 cond rates

C *** modal partition factors [ dimensionless ]
C     defined in Equations A17-A18 of [Binkowski & Shankar,1995]

      REAL( 8 ) :: OMEGA_AT_SO4  ! Aitken mode 2nd and 3rd moments
      REAL( 8 ) :: OMEGA_AC_SO4  ! Accumulation mode 2nd and 3rd moments
      REAL( 8 ) :: OMEGA( 2 )    ! partitioning coefficient for equilibrium PM mass

C *** Variables for new particle formation:

      REAL XH2SO4            ! steady state H2SO4 concentration
      REAL( 8 ) :: DMDT_so4  ! particle mass production rate [ ug/m**3 s ]
      REAL( 8 ) :: DNDT      ! particle number production rate [ # / m**3 s ]
      REAL( 8 ) :: DM2DT     ! second moment production rate [ m**2 / m**3 s]
      REAL( 8 ) :: SULFRATE  ! SO4 production rate [ ug/m**3 s ]
      REAL( 8 ) :: SCONDRATE ! SO4 condensation rate [ ug/m**3 s ]

C *** Mode-specific sulfate production rate [ ug/m**3 s ]

      REAL( 8 ) :: CONDSO4(NMODES)      ! sulfate condensation rate [ ug/m**3 s ]
      REAL( 8 ) :: RATE                 ! CONDSO4 or cond+nucl rate

C *** Size-dependent portion of mass-transfer rate equation

      REAL( 8 ) :: GRFAC1(NMODES)       ! 2nd moment [ m**2/m**3-s ] 
      REAL( 8 ) :: GRFAC2(NMODES)       ! 3rd moment [ m**3/m**3-s ] 
      
C *** ISORROPIA input variables

      REAL( 8 ) :: WI( 8 )              ! species array
      REAL( 8 ) :: RHI                  ! relative humidity
      REAL( 8 ) :: TEMPI                ! temperature
      REAL( 8 ) :: CNTRL( 2 )           ! control parameters 

C *** ISORROPIA output variables
      
      REAL( 8 ) :: WT( 8 )              ! species output array
      REAL( 8 ) :: GAS( 3 )             ! gas-phase   "     " 
      REAL( 8 ) :: AERLIQ( 15 )         ! liq aerosol "     " 
      REAL( 8 ) :: AERSLD( 19 )         ! solid "     "     " 
      REAL( 8 ) :: OTHER( 9 )           ! supplementary output array
      CHARACTER( 15 ) :: SCASI          ! subcase number output

C *** Variables to account for mass conservation violations in ISRP3F

      LOGICAL TRUSTNH4           ! false if ISOROPIA's partitioning
                                 !  of NH4/NH3 is to be ignored
      LOGICAL TRUSTCL            ! false if ISOROPIA's partitioning       
                                 !  of Cl/HCl is to be ignored

C *** initial (double-precision) concentrations [ug/m3]

      REAL( 8 ) :: GNH3R8             ! gas-phase ammonia
      REAL( 8 ) :: GNO3R8             ! gas-phase nitric acid
      REAL( 8 ) :: GCLR8              ! gas-phase hydrochloric acid
      REAL( 8 ) :: H2OR8              ! aerosol LWC

C *** Variables for volatile species mass transfer between gas and aerosol and
C     mass partitioning between the modes 

      LOGICAL HYBRID ! mass transfer option flag (mass transfer if .TRUE.)
      REAL( 8 ) :: JH2SO4 ! flux of cond./evap. H2SO4 (mol/m3/s)
      REAL( 8 ) :: CH2SO4 ! concentration of H2SO4 before cond/evap (mol/m3)
      REAL( 8 ) :: DVOLINORG( NVOLINORG ) ! vol inorg spcs mass to be xferred [mol/m3]
      REAL( 8 ) :: DVOLMAX                ! max value for DVOLINORG 
      REAL( 8 ) :: CINORG( NINORG,NMODES ) ! scratch array for inorg spcs [ug/m**3]
      REAL( 8 ) :: HPLUS                  ! scratch var for H+ [umol/m**3]
      REAL( 8 ) :: DELT                   ! time step DT [s]
      REAL( 8 ) :: INT_TIME               ! internal mass transfer time (s)
      REAL( 8 ) :: TSTEP                  ! mass transfer time step [s]
      REAL( 8 ) :: DRYM20, Y              ! scratch vars for 2nd moment [m**2/m**3]
      REAL( 8 ) :: M3OTHR, M3SOA          ! vars for 3rd moment calculation [m**3/m**3]
      REAL( 8 ), SAVE :: DF( NVOLINORG )  ! scratch array for mole -> ug conversion
      REAL( 8 ), SAVE :: DFH2OR8          ! mole -> ug conversion for H2O
      REAL( 8 ) :: CONVFAC           ! conversion factor for SO4 conc from DH2SO4/DT
      REAL( 8 ) :: J(NVOLINORG)      ! condensation/evaporation flux [mol/m**3-s]
      REAL( 8 ) :: CFINAL( NVOLINORG,NMODES ) ! conc after mass xfer step [ug/m**3]
      REAL( 8 ) :: H2O                    ! Scratch LWC variable for output
      REAL( 8 ) :: H2O_NEW                ! Update of LWC after condensation 
      REAL( 8 ) :: SO4                 ! modal SO4 after condensation or cond + nucl
      REAL( 8 ) :: DMASS( NVOLINORG )  ! excess mass in fine mode partitioning
      REAL( 8 ) :: DDRYM3DT            ! rate of 3rd moment transfer - dry inorg spcs
      REAL( 8 ) :: DDRYM2DT            ! rate of 2nd moment transfer -  "     "    "
      REAL( 8 ) :: DRYM3, WETM3        ! scratch vars for 3rd moment calc [m**3/m**3]
      REAL( 8 ) :: DRYM2, WETM2        ! scratch vars for 2nd moment calc [m**2/m**3]
      REAL( 8 ) :: LOSS                ! rate of loss of second moment [1/s] 
!     REAL, PARAMETER :: CUTOFF = 0.01   ! [ug/m**3]
      REAL, PARAMETER :: CUTOFF = 0.05   ! [ug/m**3]
      INTEGER I, IMODE         ! mode loop and array indices
      INTEGER ISTEP            ! loop index, mass transfer time step loop
      INTEGER ISP              ! loop index, species loop

      INTEGER LOGDEV 
      LOGICAL, SAVE :: FIRSTIME = .TRUE.
      LOGICAL, PARAMETER :: LIMIT_Sg = .TRUE.   ! fix Sg at current value?
      LOGICAL TrustIso   ! For negative vap. press., TrustIso = F 
      LOGICAL, SAVE :: FIRSTWRITE = .TRUE.

C *** Begin Execution

      IF ( ( CBLK( VNAK ) + CBLK( VSO4K ) + CBLK( VNH4K )
     &     + CBLK( VNO3K ) + CBLK( VCLK ) < CUTOFF ) .OR.
     &       AIRRH < 0.18 ) THEN
         HYBRID = .FALSE.
      ELSE
         HYBRID = .TRUE.
      ENDIF
  
      IF ( FIRSTIME ) THEN
         DF( KNH4 ) = DFNH4
         DF( KNO3 ) = DFNO3
         DF( KCL )  = DFCL
         DFH2OR8    = DFH2O
         TWO3D      = TWO3
         COFCBAR_SO4 = SQRT( 8.0 * RGASUNIV / ( PI * MWH2SO4 * 1.0E-3  ))
         FIRSTIME = .FALSE.
      ENDIF
      
      DELT  = DBLE( DT )
      CONVFAC  = DELT * H2SO4RATM1

      TEMPI = AIRTEMP             ! assume const within synch timestep
      RHI   = MIN( 0.95, AIRRH )  ! "        "     "      "     "
      SULFRATE = SO4RATE          ! "        "     "      "     "

C *** Calculate molecular velocities (temperature dependant) and
C     H+ concentration

      CBAR_SO4 = COFCBAR_SO4 * SQRT( AIRTEMP )

      CBLK( VHPLUSI ) = 2.0 * CBLK( VSO4AI ) / MWSO4
     &                +       CBLK( VNO3AI ) / MWNO3
     &                +       CBLK( VCLI )   / MWCL
     &                -       CBLK( VNAI )   / MWNA
     &                -       CBLK( VNH4AI ) / MWNH4

      CBLK( VHPLUSJ ) = 2.0 * CBLK( VSO4AJ ) / MWSO4
     &                +       CBLK( VNO3AJ ) / MWNO3
     &                +       CBLK( VCLJ )   / MWCL
     &                -       CBLK( VNAJ )   / MWNA
     &                -       CBLK( VNH4AJ ) / MWNH4

      CBLK( VHPLUSK ) = 2.0 * CBLK( VSO4K )  / MWSO4
     &                +       CBLK( VNO3K )  / MWNO3
     &                +       CBLK( VCLK )   / MWCL
     &                -       CBLK( VNAK )   / MWNA
     &                -       CBLK( VNH4K )  / MWNH4

C *** CONDENSATIONAL GROWTH (Size-dependent terms)
C     Calculate intermediate variables needed to determine the 2nd and
C     3rd moment condensational-growth rates.  3rd moment terms are 
C     needed for the calculation of new particle production.  See 
C     Section 3.3 of Jiang & Roth (2003) for a detailed discussion.
      
      AM0AT   = CBLK( VAT0 )
      AM0AC   = CBLK( VAC0 )
      AM0CO   = CBLK( VCO0 )

C *** Calculate first moments using Equation 4 of Binkowski & Shankar
C     (1995) or Equation 3 of Binkowski and Roselle (2003).
C     N.B: these are for a "wet" size distribution

      AM1AT   = CBLK( VAT0 ) * DGATK * EXP( 0.5 * XXLSGAT * XXLSGAT )
      AM1AC   = CBLK( VAC0 ) * DGACC * EXP( 0.5 * XXLSGAC * XXLSGAC )
      AM1CO   = CBLK( VCO0 ) * DGCOR * EXP( 0.5 * XXLSGCO * XXLSGCO )

      AM2AT   = CBLK( VAT2 )
      AM2AC   = CBLK( VAC2 )
      AM2CO   = CBLK( VCO2 )

C *** Calculate the size-dependent terms in the condensational-
C     growth factor expressions for sulfate using 
C     Equations A13-A14 of Binkowski & Shankar (1995). 
       
      CALL HCOND3( AM0AT, AM1AT, AM2AT, DV_SO4, ALPHSULF, CBAR_SO4, 
     &             FCONCAT_SO4 )     ! Equation A13
      CALL HCOND3( AM0AC, AM1AC, AM2AC, DV_SO4, ALPHSULF, CBAR_SO4, 
     &             FCONCAC_SO4 )     ! Equation A14

      IF ( HYBRID ) THEN 
         CALL HCOND3( AM0CO, AM1CO, AM2CO, DV_SO4, ALPHSULF, CBAR_SO4, 
     &                FCONCCO_SO4 )   ! adapted from Equation A14
      ELSE
         FCONCCO_SO4( 1 ) = 0.D0      ! fine equil => non-reactive coarse mode
         FCONCCO_SO4( 2 ) = 0.D0
      ENDIF
      
      GRFAC1( 1 ) = FCONCAT_SO4( 1 ) 
      GRFAC2( 1 ) = FCONCAT_SO4( 2 ) 
      GRFAC1( 2 ) = FCONCAC_SO4( 1 ) 
      GRFAC2( 2 ) = FCONCAC_SO4( 2 ) 
      GRFAC1( 3 ) = FCONCCO_SO4( 1 ) 
      GRFAC2( 3 ) = FCONCCO_SO4( 2 ) 

C *** NEW PARTICLE PRODUCTION
C     Calculate the new particle production rate due to binary
C     nucleation of H2O and H2SO4.  These calculations are performed 
C     only when the gas-phase production rate of H2SO4 (i.e., SO4RATE) 
C     is non-zero.  The condensation rate of H2SO4 is calculated as the
C     gas-phase production rate minus the new particle production rate.

C *** initialize variables
      DMDT_SO4  = 0.0D0
      DNDT      = 0.0D0
      DM2DT     = 0.0D0
      SCONDRATE = 0.0D0

C *** produce new particles only during time steps when the gas-phase 
C     production rate of H2SO4 is non-zero

      IF( SULFRATE .NE. 0.0D0 ) THEN

C *** adjust sulfuric acid vapor concentration to a value in
C     equilibrium with the production of new particles and the
C     condensation of sulfuric acid vapor on existing particles, based 
C     on Equations A21 and A23 of Binkowski & Shankar (1995).

         XH2SO4 = SULFRATE / ( FCONCAT_SO4( 2 ) + FCONCAC_SO4( 2 )
     &                       + FCONCCO_SO4( 2 ) )
         XH2SO4 = MAX( XH2SO4, 1.0E-30 )
         CBLK( VSULF ) = XH2SO4

C *** calculate new particle production rate for 0th, 2nd, & 3rd moments
         
         CALL NEWPART3 ( AIRRH, AIRTEMP, XH2SO4, SO4RATE,
     &                   DNDT, DMDT_SO4, DM2DT )
         
C *** calculate sulfate condensation rate as the gas-phase production 
C     rate minus the new particle production rate, following Equation
C     3.23 of Jiang & Roth (2003).

         SCONDRATE = MAX( SULFRATE - DMDT_SO4, 0.0D0 )

      END IF                    ! check on SULFRATE

C *** SULFATE CONDENSATION (Size-resolved)
C     Calculate rate at which condensing sulfate should be added to each
C     mode.  The "omega" factors are defined in Equations 7a and 7b of
C     Binkowski & Shankar (1995). The i-mode and j-mode factors are 
C     calculated using Equation A17 of Binkowski & Shankar (1995). The 
C     condensation rate for accumulation mode (fine-equilibrium scheme) or 
C     coarse mode (hybrid and dynamic schemes) is computed by difference, 
C     to avoid mass conservation violations arising from numerical error.
 
      FCONCM1_SO4  = 1.0D0 / ( FCONCAT_SO4( 2 ) + FCONCAC_SO4( 2 )
     &                       + FCONCCO_SO4( 2 ) )
      OMEGA_AT_SO4 = FCONCM1_SO4 * FCONCAT_SO4( 2 )
      OMEGA_AC_SO4 = FCONCM1_SO4 * FCONCAC_SO4( 2 )
      CONDSO4( 1 ) = OMEGA_AT_SO4 * SCONDRATE      

C *** growth values for mode merge condition
      CGR(1) = SO4FAC * SCONDRATE * OMEGA_AT_SO4
      CGR(2) = SO4FAC * SCONDRATE * OMEGA_AC_SO4
      
      IF ( HYBRID ) THEN 
         CONDSO4( 2 ) = OMEGA_AC_SO4 * SCONDRATE      
         CONDSO4( 3 ) = SCONDRATE - ( CONDSO4( 1 ) + CONDSO4( 2 ) ) 
      ELSE                                  ! fine equilibrium
         CONDSO4( 2 ) = SCONDRATE - CONDSO4( 1 )
         CONDSO4( 3 ) = 0.0D0               ! no coarse mode chemistry
      ENDIF

C *** For Hybrid approach, calculate dynamic mass trasfer for
C     semi-volatile components of coarse mode (NO3, CL, NH4)  

      IF ( HYBRID ) THEN 

         INT_TIME = 0.0D0
         TSTEP    = 90.0D0
         ISTEP    = 0
         IMODE    = 3
         TrustIso = .TRUE.
 
         DO WHILE ( INT_TIME < DELT ) 

            IF ( INT_TIME + TSTEP > DELT ) TSTEP = DELT - INT_TIME 
            INT_TIME = INT_TIME + TSTEP 
            ISTEP = ISTEP + 1   

            IF ( ISTEP .GT. 1 ) THEN

C *** Calculate first moments using Equation 4 of Binkowski & Shankar
C     (1995) or Equation 3 of Binkowski and Roselle (2003).
C     N.B: these are for a "wet" size distribution

               AM0CO   = CBLK( VCO0 )
               AM1CO   = CBLK( VCO0 ) * DGCOR *
     &                   EXP( 0.5 * XXLSGCO * XXLSGCO )
               AM2CO   = CBLK( VCO2 )

C *** Calculate the size-dependent terms in the condensational-
C     growth factor expressions for sulfate using 
C     Equations A13-A14 of Binkowski & Shankar (1995). 
               
               CALL HCOND3( AM0CO,AM1CO,AM2CO,DV_SO4,ALPHSULF, 
     &                      CBAR_SO4, FCONCCO_SO4 )  ! adapted from Eq A14

               GRFAC1( 3 ) = FCONCCO_SO4( 1 ) 
               GRFAC2( 3 ) = FCONCCO_SO4( 2 ) 

            ENDIF               ! if ISTEP .GT. 1

C *** Set conc array to aerosol concentrations prior to mass transfer

            CINORG( KNH4,IMODE ) = CBLK( VNH4K ) 
            CINORG( KNO3,IMODE ) = CBLK( VNO3K )
            CINORG( KCL, IMODE ) = CBLK( VCLK )
            CINORG( KSO4,IMODE ) = CBLK( VSO4K )
            CINORG( KNA, IMODE ) = CBLK( VNAK )
            CINORG( KHP, IMODE ) = CBLK( VHPLUSK ) ! N.B:  [umol/m**3]
            M3OTHR = SOILFAC * CBLK( VSOILA ) + ANTHFAC * CBLK( VANTHA )
            M3SOA  = 0.0D0
            WETM3  = CBLK( VCO3 )
            WETM2  = CBLK( VCO2 )
            DRYM3  = WETM3 - DBLE( H2OFAC * CBLK( VH2OK ) )   
            DRYM20 = WETM2 * ( DRYM3 / WETM3 ) ** TWO3D

C *** fetch initial vapor-phase concentrations [ug/m3]

            GNO3R8  = CBLK( VHNO3 )
            GNH3R8  = CBLK( VNH3 )
            GCLR8   = CBLK( VHCL )

C *** This section of code calculates the distribution of ammonia/
C     ammonium, nitric acid/nitrate, and water between the gas and 
C     aerosol phases as a function of total sulfate, total ammonia, 
C     total nitrate, relative humidity, and temperature.  It is assumed
C     that the aerosol is entirely aqueous (i.e., metastable assumption),
C     irrespective of ambient relative humidity.

C *** compute sulfate production rate [ug/m3 s] for coarse mode

            RATE = CONDSO4( IMODE )
            SO4  = CINORG( KSO4,IMODE ) + RATE * TSTEP * H2SO4RATM1

            IF ( TrustIso ) THEN

C *** double precision vars for ISORROPIA (mole/m3)
               WI( 1 ) = CINORG(KNA, IMODE) * FAERNAR8 
               WI( 2 ) = SO4 * FAERSO4R8
               WI( 3 ) = CINORG(KNH4,IMODE) * FAERNH4R8 
               WI( 4 ) = CINORG(KNO3,IMODE) * FAERNO3R8 
               WI( 5 ) = CINORG(KCL, IMODE) * FAERCLR8  
!temporary set Ca, K, Mg to zero
               WI( 6 ) = 1.D-15 !Ca
               WI( 7 ) = 1.D-15 !K
               WI( 8 ) = 1.D-15 !Mg

               CNTRL( 1 ) = 1.0D0 ! reverse problem
               CNTRL( 2 ) = 1.0D0 ! aerosol in metastable state
     
C *** set flags to account for mass conservation violations in ISRP3F

               TRUSTCL  = .TRUE.
               TRUSTNH4 = .TRUE.
               IF ( WI( 1 ) + WI( 5 ) .LT. 1.0D-20 ) THEN
                  TRUSTCL = .FALSE.
               ELSE
                  IF ( WI( 3 ) .LT. 1.0D-10 ) TRUSTNH4 = .FALSE.
                  IF ( WI( 5 ) .LT. 1.0D-10 ) TRUSTCL  = .FALSE.
               ENDIF

C     WI( 1 ) = NA    [mol/m3]
C     WI( 2 ) = SO4      "
C     WI( 3 ) = NH4      "
C     WI( 4 ) = NO3      "
C     WI( 5 ) = CL       "
C     GAS(1) = NH3, GAS(2) = HNO3, GAS(3) = HCl

               CALL ISOROPIA( WI, RHI, TEMPI, CNTRL, WT, GAS, AERLIQ,  
     &                        AERSLD, SCASI, OTHER )

               IF ( GAS( 1 ) < 0 .OR. GAS( 2 ) < 0 .OR. GAS( 3 ) < 0 ) THEN
                  IF ( FIRSTWRITE ) THEN
                     FIRSTWRITE = .FALSE.
                     WRITE( LOGDEV,2023 )
                  END IF
                  WRITE( LOGDEV,2029 ) COL, ROW, LAYER, GAS( 1 ), GAS( 2 ), GAS( 3 )
                  TrustIso = .FALSE.
               ENDIF

            ENDIF   ! TrustIso

C *** change in volatile inorganic PM concentration to achieve
C     equilibrium, calculated as initial-gas-phase concentration minus 
C     equilibrium gas-phase concentration. DVOLINORG is positive for
C     condensation and negative for evaporation.

            DVOLINORG( KNH4 ) = GNH3R8 * FAERNH3R8  - GAS( 1 )  
            DVOLINORG( KNO3 ) = GNO3R8 * FAERHNO3R8 - GAS( 2 ) 
            DVOLINORG( KCL )  = GCLR8  * FAERHCLR8  - GAS( 3 ) 
            
C *** calculate condensation/evaporation flux for this time step and update 
C     volatile species concentrations.  final aerosol conc set to be  
C     no less than the minimum aerosol conc

            IF ( TrustIso ) THEN
              CALL COMPUTE_FLUX( GNH3R8, GNO3R8, GCLR8, GAS( 1:3 ),
     &                           GRFAC2( IMODE ), AERLIQ( 1 ), RATE, J )
            ELSE
              J( : ) = 0.0D0
            ENDIF 

            IF ( J( KNH4 ) * TSTEP * DF( KNH4 ) * NH3RAT .GT. GNH3R8 ) THEN
               WRITE( LOGDEV,* ) 'Condensed amt. exceeds NH3 conc: aero_subs.f'
               J( KNH4 ) = GNH3R8 / ( TSTEP * DF( KNH4 ) * NH3RAT )
            ENDIF
            IF ( J( KNO3 ) * TSTEP * DF( KNO3 ) * HNO3RAT .GT. GNO3R8 ) THEN
               WRITE( LOGDEV,* ) 'Condensed amt. exceeds HNO3 conc: aero_subs.f'
               J( KNO3 ) = GNO3R8 / ( TSTEP * DF( KNO3 ) * HNO3RAT )
            ENDIF
            IF ( J( KCL ) * TSTEP * DF(KCL) * HCLRAT .GT. GCLR8 ) THEN
               WRITE( LOGDEV,* ) 'Condensed amt. exceeds HCl conc: aero_subs.f'
               J( KCL ) = GCLR8 / ( TSTEP * DF( KCL ) * HCLRAT )
            ENDIF

C *** Integrate mass transfer equation, convert flux from molar to mass

            DO ISP = 1, NVOLINORG
               CFINAL( ISP,IMODE ) = MAX( CINORG( ISP, IMODE )
     &                                   + J( ISP ) * TSTEP * DF(ISP), 0.0D0 )
            END DO               

C *** Calculate updated H+ concentration 

            HPLUS = 2.0D0 * SO4          / MWSO4R8
     &            + CFINAL( KNO3,IMODE ) / MWNO3R8
     &            + CFINAL( KCL, IMODE ) / MWCLR8
     &            - CFINAL( KNH4,IMODE ) / MWNH4R8
     &            - CINORG( KNA, IMODE ) / MWNAR8

C *** equilibrate aerosol LWC with CFINAL by calling CALC_H2O

            WI( 1 ) = CINORG( KNA, IMODE ) * FAERNAR8
            WI( 2 ) = SO4 * FAERSO4R8
            WI( 3 ) = CFINAL( KNH4,IMODE ) * FAERNH4R8 
            WI( 4 ) = CFINAL( KNO3,IMODE ) * FAERNO3R8 
            WI( 5 ) = CFINAL( KCL, IMODE ) * FAERCLR8  
!temporary set Ca, K, Mg to zero
            WI( 6 ) = 1.D-15 !Ca
            WI( 7 ) = 1.D-15 !K
            WI( 8 ) = 1.D-15 !Mg

            CALL CALC_H2O( WI, RHI, TEMPI, H2O_NEW ) 

            H2O = H2O_NEW * DFH2OR8 

C *** Compute net change in 3rd moment due to dry inorganic mass transfer

            DDRYM3DT = (
     &                   ( CFINAL( KNH4,IMODE ) - CINORG( KNH4,IMODE ) )
     &                     * NH4FACR8
     &                 + ( CFINAL( KNO3,IMODE ) - CINORG( KNO3,IMODE ) )
     &                     * NO3FACR8
     &                 + ( CFINAL( KCL, IMODE ) - CINORG( KCL,IMODE ) )
     &                     * SEASFACR8
     &                 + ( SO4                  - CINORG( KSO4,IMODE ) )
     &                     * SO4FACR8 ) / TSTEP 

C *** Compute net change in 2nd moment due to dry inorganic mass transfer
c     (including nucleation) using equation A7 of Binkowski & Shankar (1995)

            DDRYM2DT = TWO3D * GRFAC1(IMODE) / GRFAC2(IMODE) * DDRYM3DT   

C *** Update dry 2nd moment for condensation/evaporation based on whether
c     net change in dry 2nd moment is production or loss

            IF ( DDRYM2DT .LT. 0.0D0 ) THEN
               LOSS = DDRYM2DT / DRYM20
               Y = DRYM20 * EXP( LOSS * TSTEP )
            ELSE
               Y = DRYM20 + DDRYM2DT * TSTEP
            ENDIF
            
C *** Add water and SOA to 2nd moment while preserving standard deviation

            DRYM3 = SO4FAC  * SO4
     &            + NH4FAC  * CFINAL( KNH4,IMODE )
     &            + NO3FAC  * CFINAL( KNO3,IMODE )
     &            + SEASFAC * CFINAL( KCL, IMODE )
     &            + SEASFAC * CINORG( KNA, IMODE )
     &            + M3OTHR                   
            WETM3 = DRYM3 + M3SOA + DBLE( H2OFAC ) * H2O  
            DRYM2 = MAX( DBLE( MINM2( IMODE ) ), Y )
            WETM2 = DRYM2 * ( WETM3 / DRYM3 ) ** TWO3D

            CBLK( VNH3 )  = GNH3R8 + ( CINORG( KNH4,IMODE )
     &                               - CFINAL( KNH4,IMODE ) ) * NH3RAT 
 
            CBLK( VHNO3 ) = GNO3R8 + ( CINORG( KNO3,IMODE )
     &                               - CFINAL( KNO3,IMODE) ) * HNO3RAT  
   
            CBLK( VHCL )  = GCLR8 + ( CINORG( KCL,IMODE )
     &                              - CFINAL( KCL,IMODE) ) * HCLRAT 

            CBLK( VNH4K ) = CFINAL( KNH4,IMODE )
            CBLK( VNO3K ) = CFINAL( KNO3,IMODE )
            CBLK( VCLK )  = CFINAL( KCL, IMODE )
            CBLK( VSO4K ) = SO4
            CBLK( VH2OK ) = H2O
            CBLK( VHPLUSK ) = HPLUS
            CBLK( VCO2 )  = WETM2

C *** Update the third moments, geometric mean diameters, geometric 
C     standard deviations, modal mass totals, and modal particle 
C     densities.
               
            CALL GETPAR( NSPCSDA, CBLK,
     &                   PMASSAT, PMASSAC, PMASSCO,
     &                   PDENSAT, PDENSAC, PDENSCO,
     &                   DGATK, DGACC, DGCOR,
     &                   XXLSGAT, XXLSGAC, XXLSGCO, 
     &                   M3_WET_FLAG, LIMIT_Sg )

         END DO                 ! end mass transfer time step loop
         
      ENDIF                     ! endif for 'Hybrid' method

C *** End of dynamic mass transfer calculations for coarse mode
         
C *** Call ISORROPIA in forward mode to calculate gas-particle equilibrium in 
C     the fine aerosol modes 

      GNH3R8 = CBLK( VNH3 ) 
      GNO3R8 = CBLK( VHNO3 ) 
      GCLR8  = CBLK( VHCL ) 
            
C *** compute sulfate from total sulfate production rate [ug/m3-s] for fine 
C     modes; add in H2SO4 nucleated in model timestep

      SO4 = CBLK( VSO4AI ) + CBLK( VSO4AJ )
      SO4 = SO4 + ( DMDT_SO4 + CONDSO4( 1 ) + CONDSO4( 2 ) )
     &              * DELT * H2SO4RATM1 

      WI( 1 ) = ( CBLK( VNAI  ) + CBLK( VNAJ ) ) * FAERNAR8 
      WI( 2 ) = SO4 * FAERSO4R8
      WI( 3 ) = CBLK( VNH3  ) * FAERNH3R8
     &        + ( CBLK( VNH4AI ) + CBLK( VNH4AJ ) ) * FAERNH4R8 
      WI( 4 ) = CBLK( VHNO3 ) * FAERHNO3R8
     &        + ( CBLK( VNO3AI ) + CBLK( VNO3AJ ) ) * FAERNO3R8 
      WI( 5 ) = CBLK( VHCL  ) * FAERHCLR8
     &        + ( CBLK( VCLI ) + CBLK( VCLJ ) ) * FAERCLR8  
!temporary set Ca, K, Mg to zero
      WI( 6 ) = 1.D-15 !Ca
      WI( 7 ) = 1.D-15 !K
      WI( 8 ) = 1.D-15 !Mg

      CNTRL( 1 ) = 0.0D0   ! forward problem
      CNTRL( 2 ) = 1.0D0   ! aerosol in metastable state

C *** set flags to account for mass conservation violations in ISRP3F

      TRUSTCL  = .TRUE.
      TRUSTNH4 = .TRUE.
      IF ( WI( 1 ) + WI( 5 ) .LT. 1.0D-20 ) THEN
         TRUSTCL = .FALSE.
      ELSE
         IF ( WI( 3 ) .LT. 1.0D-10 ) TRUSTNH4 = .FALSE.
         IF ( WI( 5 ) .LT. 1.0D-10 ) TRUSTCL  = .FALSE.
      ENDIF
         
      CALL ISOROPIA( WI, RHI, TEMPI, CNTRL, WT, GAS, AERLIQ,
     &               AERSLD, SCASI, OTHER )
 
C *** update gas-phase concentrations

      CBLK( VNH3 )  = GAS( 1 ) * DFNH3
      CBLK( VHNO3 ) = GAS( 2 ) * DFHNO3
      CBLK( VHCL )  = GAS( 3 ) * DFHCL
           
C *** change in volatile inorganic PM concentration to achieve
C     equilibrium, calculated as initial-gas-phase concentration minus 
C     equilibrium gas-phase concentration. DVOLINORG is positive for
C     condensation and negative for evaporation.

      DVOLINORG( KNH4 ) = GNH3R8 * FAERNH3R8  - GAS( 1 )  
      DVOLINORG( KNO3 ) = GNO3R8 * FAERHNO3R8 - GAS( 2 ) 

      IF ( TRUSTCL ) THEN  
         DVOLINORG( KCL )  = GCLR8  * FAERHCLR8  - GAS( 3 )          
      ELSE
         DVOLINORG( KCL ) = 0.0D0
      ENDIF

      IF ( DVOLINORG( KNH4 ) < 0.0D0 ) THEN
         DVOLMAX = -( DBLE( CBLK( VNH4AI ) ) + DBLE( CBLK( VNH4AJ ) ) ) /
     &                DF(KNH4)
         DVOLINORG( KNH4 ) = MAX( DVOLINORG( KNH4 ), DVOLMAX )
      ENDIF

      IF ( DVOLINORG( KNO3 ) < 0.0D0 ) THEN
         DVOLMAX = -( DBLE( CBLK( VNO3AI ) ) + DBLE( CBLK( VNO3AJ ) ) ) /
     &                DF( KNO3 )
         DVOLINORG( KNO3 ) = MAX( DVOLINORG( KNO3 ), DVOLMAX)
      ENDIF

      IF ( DVOLINORG( KCL ) < 0.0D0 ) THEN
         DVOLMAX = -( DBLE( CBLK( VCLI ) ) + DBLE( CBLK( VCLJ ) ) ) /
     &                DF( KCL )
         DVOLINORG( KCL ) = MAX( DVOLINORG( KCL ), DVOLMAX )
      ENDIF

      OMEGA( 1 ) = GRFAC2( 1 ) / ( GRFAC2( 1 ) + GRFAC2( 2 ) ) ! partitioning cof
      OMEGA( 2 ) = 1.0D0 - OMEGA( 1 )

C *** initialize excess evaporated mass array

      DO ISP = 1, NVOLINORG
         DMASS( ISP ) = 0.0D0
      END DO
      DO IMODE = 1, 2  ! modal partitioning of equilibrium aerosol mass
         
         IF ( IMODE .EQ. 1 ) THEN

            CINORG( KSO4,IMODE ) = CBLK( VSO4AI )
            CINORG( KNH4,IMODE ) = CBLK( VNH4AI )
            CINORG( KNO3,IMODE ) = CBLK( VNO3AI )
            CINORG( KNA, IMODE ) = CBLK( VNAI )
            CINORG( KCL, IMODE ) = CBLK( VCLI )
            RATE                 = DMDT_SO4 + CONDSO4( 1 )
            M3OTHR               = ORGFAC  * CBLK( VORGPAI )
     &                           + ANTHFAC * CBLK( VECI )
     &                           + ANTHFAC * CBLK( VP25AI )
            M3SOA = 0.0
            WETM3 = CBLK( VAT3 )
            WETM2 = CBLK( VAT2 )
            DRYM3 = WETM3 - DBLE( H2OFAC * CBLK( VH2OAI ) )

         ELSE 

            CINORG( KSO4,IMODE ) = CBLK( VSO4AJ )
            CINORG( KNH4,IMODE ) = CBLK( VNH4AJ )
            CINORG( KNO3,IMODE ) = CBLK( VNO3AJ )
            CINORG( KNA, IMODE ) = CBLK( VNAJ )
            CINORG( KCL, IMODE ) = CBLK( VCLJ )
            RATE                 = CONDSO4( 2 )
            M3OTHR = ANTHFAC *  CBLK( VECJ )
     &             + ANTHFAC *  CBLK( VP25AJ )
     &             + ORGFAC * ( CBLK( VORGPAJ )
     &             +            CBLK( VXYL3J )
     &             +            CBLK( VTOL3J )
     &             +            CBLK( VBNZ3J )
     &             +            CBLK( VISO3J )
     &             +            CBLK( VOLGAJ )
     &             +            CBLK( VOLGBJ )
     &             +            CBLK( VORGCJ ) )

            M3SOA  = ORGFAC * ( CBLK( VALKJ )
     &             +            CBLK( VXYL1J )
     &             +            CBLK( VXYL2J )
     &             +            CBLK( VTOL1J )
     &             +            CBLK( VTOL2J )
     &             +            CBLK( VBNZ1J )
     &             +            CBLK( VBNZ2J )
     &             +            CBLK( VTRP1J )
     &             +            CBLK( VTRP2J )
     &             +            CBLK( VISO1J )
     &             +            CBLK( VISO2J )
     &             +            CBLK( VSQTJ ) )

            WETM3  = CBLK( VAC3 )
            WETM2  = CBLK( VAC2 )
            DRYM3  = WETM3 - DBLE( H2OFAC * CBLK( VH2OAJ ) ) - M3SOA 

         ENDIF
         
         DRYM20 = WETM2 * ( DRYM3 / WETM3 ) ** TWO3D

         DO ISP = 1, NVOLINORG
          
            CFINAL( ISP,IMODE ) = CINORG( ISP,IMODE )
     &                          + OMEGA( IMODE ) * DVOLINORG( ISP )
     &                          * DF( ISP )

            IF ( IMODE .EQ. 1 ) THEN

               IF ( CFINAL( ISP,IMODE ) .LT. 0.0D0 ) THEN
                  DMASS( ISP) = CFINAL( ISP,IMODE )
                  CFINAL( ISP,IMODE ) = 0.0D0
               ENDIF

            ELSE

               CFINAL( ISP,IMODE ) = CFINAL( ISP,IMODE ) + DMASS( ISP )

               IF ( CFINAL( ISP,IMODE ) .LT. 0.0D0 ) THEN
                  CFINAL( ISP,1 ) = CFINAL( ISP,1 ) + CFINAL( ISP,IMODE ) 
                  CFINAL( ISP,IMODE ) = 0.0D0

                  IF ( CFINAL( ISP, 1 ) .LT. 0.0D0 ) THEN
                     IF ( ABS( CFINAL( ISP,1 ) ) .LT. 1.0D-15 ) THEN
                        CFINAL( ISP,1 ) = 0.0D0
                     ELSE
                        PRINT *, 'Too much evaporation: aero_subs.f'
                        CFINAL( ISP,1 ) = 0.0D0
!                       STOP
                     ENDIF
                  ENDIF 
               ENDIF

            ENDIF
            
         END DO
                        
         SO4 = CINORG(KSO4, IMODE) + RATE * CONVFAC

c *** double precision vars for ISORROPIA

         WI( 1 ) = CINORG(KNA, IMODE) * FAERNAR8
         WI( 2 ) = SO4 * FAERSO4R8
         WI( 3 ) = CFINAL(KNH4,IMODE) * FAERNH4R8 
         WI( 4 ) = CFINAL(KNO3,IMODE) * FAERNO3R8 
         WI( 5 ) = CFINAL(KCL, IMODE) * FAERCLR8  
!temporary set Ca, K, Mg to zero
         WI( 6 ) = 1.D-15 !Ca
         WI( 7 ) = 1.D-15 !K
         WI( 8 ) = 1.D-15 !Mg

         CALL CALC_H2O( WI, RHI, TEMPI, H2O_NEW ) 
            
         H2O = H2O_NEW * DFH2OR8 

C *** Compute net change in 3rd moment due to dry inorganic mass transfer
C     (includes nucleated sulfate mass)

         DDRYM3DT = (
     &                ( CFINAL( KNH4,IMODE ) - CINORG( KNH4,IMODE ) )
     &                  * NH4FACR8
     &              + ( CFINAL( KNO3,IMODE ) - CINORG( KNO3,IMODE ) )
     &                  * NO3FACR8
     &              + ( CFINAL( KCL, IMODE ) - CINORG( KCL,IMODE ) )
     &                  * SEASFACR8
     &              + ( SO4                  - CINORG( KSO4,IMODE ) )
     &                  * SO4FACR8 ) / DELT

C *** Compute net change in 2nd moment due to dry inorganic mass transfer
C     (including nucleation) using equation A7 of Binkowski & Shankar (1995)
         DDRYM2DT = TWO3D * GRFAC1( IMODE ) / GRFAC2( IMODE ) * DDRYM3DT

C *** Update dry 2nd moment for condensation/evaporation based on whether
C     net change in dry 2nd moment is production or loss

         IF ( DDRYM2DT .LT. 0.0D0 ) THEN
            LOSS = DDRYM2DT / DRYM20
            Y = DRYM20 * EXP( LOSS * DELT )
         ELSE
            Y = DRYM20 + DDRYM2DT * DELT
         ENDIF
            
C *** Add water and SOA to 2nd moment while preserving standard deviation

         DRYM3 = SO4FAC  * SO4
     &         + NH4FAC  * CFINAL( KNH4,IMODE )
     &         + NO3FAC  * CFINAL( KNO3,IMODE )
     &         + SEASFAC * CFINAL( KCL, IMODE )
     &         + SEASFAC * CINORG( KNA, IMODE )
     &         + M3OTHR

         WETM3 = DRYM3 + M3SOA + DBLE( H2OFAC ) * H2O 
         DRYM2 = MAX( DBLE( MINM2( IMODE ) ), Y )
         WETM2 = DRYM2 * ( WETM3 / DRYM3 ) ** TWO3D

         IF ( IMODE .EQ. 1 ) THEN
            CBLK( VNH4AI )  = CFINAL( KNH4,IMODE )
            CBLK( VNO3AI )  = CFINAL( KNO3,IMODE )
            CBLK( VCLI )    = CFINAL( KCL, IMODE )
            CBLK( VSO4AI )  = SO4
            CBLK( VH2OAI )  = H2O
            CBLK( VAT0 )    = AM0AT + DNDT * DELT
            CBLK( VAT2 )    = WETM2
            CBLK( VHPLUSI ) = 2.0 * CBLK( VSO4AI ) / MWSO4
     &                      +       CBLK( VNO3AI ) / MWNO3
     &                      +       CBLK( VCLI )   / MWCL
     &                      -       CBLK( VNAI )   / MWNA
     &                      -       CBLK( VNH4AI ) / MWNH4
         ELSE IF ( IMODE .EQ. 2 ) THEN
            CBLK( VNH4AJ )  = CFINAL( KNH4,IMODE )
            CBLK( VNO3AJ )  = CFINAL( KNO3,IMODE )
            CBLK( VCLJ )    = CFINAL( KCL, IMODE )
            CBLK( VSO4AJ )  = SO4
            CBLK( VH2OAJ )  = H2O
            CBLK( VAC2 )    = WETM2   
            CBLK( VHPLUSJ ) = 2.0 * CBLK( VSO4AJ ) / MWSO4
     &                      +       CBLK( VNO3AJ ) / MWNO3
     &                      +       CBLK( VCLJ )   / MWCL
     &                      -       CBLK( VNAJ )   / MWNA
     &                      -       CBLK( VNH4AJ ) / MWNH4
         ENDIF
            
      END DO                 ! end fine mode mass transfer calculations

C *** Update the third moments, geometric mean diameters, geometric 
c     standard deviations, modal mass totals, and modal particle 
c     densities.

      CALL GETPAR( NSPCSDA, CBLK,
     &             PMASSAT, PMASSAC, PMASSCO,
     &             PDENSAT, PDENSAC, PDENSCO,
     &             DGATK, DGACC, DGCOR,
     &             XXLSGAT, XXLSGAC, XXLSGCO, 
     &             M3_WET_FLAG, LIMIT_Sg )

!199  FORMAT('Step      Mode    NH3      HNO3       HCL   ',
!    &           '    NH4       NO3        CL       H2O   ')
!200  FORMAT (1x, I3, 1x,' Mode ', 1x, I2,1x, 7F10.6)
!023  FORMAT( 1X, 'VOLINORG returning negative gas concentrations from ISOROPIA'
2023  FORMAT( 1X, 'VOLINORG returning negative gas concentrations from ISOROPIA:'
     &       /10X, 'GAS(1) = NH3, GAS(2) = HNO3, GAS(3) = HCl' )
2029  FORMAT( 1X, '[see VOLINORG msg]'
     &        1X, 'at (C,R,L): ', 3I4, 1X, 'GAS Conc:', 3( 1PE11.3 ) )

      RETURN
      END  SUBROUTINE VOLINORG

c-----------------------------------------------------------------------
c
c ROUTINE
c   CALC_H2O
c
c DESCRIPTION
c   Calculates the water content of aerosol at the new time step.  Water 
c   calculations use the ZSR mixing rule with salts determined by the 
c   ISORROPIA approach.
c   Routine called by VOLINORG.
c
c ARGUMENTS
c   INPUT
c     WI      : Concentration of components (mol/m^3) at new step
c     RH      : Relative humidity (0-1)
c     T       : Temperature (K)
c
c   OUTPUT
c     H2O_NEW : Water (mol/m^3) content at new time step
c
c-----------------------------------------------------------------------

      SUBROUTINE CALC_H2O ( WI, RH, T, H2O_NEW )

C Description
C   Calculate the water content of aerosol at the new time step.  Water
C   calculations use the ZSR mixing rule with salts determined by the
C   ISORROPIA approach.
C   Routine called by VOLINORG.
 
C Arguments
C   Input
C     WI      : Concentration of components [mol/m^3] at new step
C     RH      : Relative humidity [0-1]
C     T       : Temperature [K]
 
C   Output
C     H2O_NEW : Water [mol/m^3] content at new time step
 
C-----------------------------------------------------------------------

      IMPLICIT NONE

C Parameters:
      INTEGER, PARAMETER :: NCMP = 8, NPAIR = 23
      REAL( 8 ),  PARAMETER :: SMALL = 1.0D-20
      REAL( 8 ),  PARAMETER :: Mw = 0.018D0   ! molar mass H2O (kg/mol)

C Arguments:
      REAL( 8 ), INTENT( IN )  :: WI( NCMP )
      REAL( 8 ), INTENT( IN )  :: RH, T
      REAL( 8 ), INTENT( OUT ) :: H2O_NEW

C Local Variables:
      CHARACTER( 3 ) :: SC ! subcase for composition
      REAL( 8 ) :: FSO4, FNH4, FNA, FNO3, FCL ! "free" ion amounts
      REAL( 8 ) :: FCA, FK, FMG            
      REAL( 8 ) :: CASO4         ! amount of calcium sulfate, does not participate in ZSR calc
      REAL( 8 ) :: WATER         ! kg of water for new time step 
      REAL( 8 ) :: X, Y
      REAL( 8 ) :: CONC( NCMP )    ! concentration (mol/m^3)
      REAL( 8 ) :: CONCR( NPAIR )  ! concentration (mol/m^3) ion "pairs" 
      REAL( 8 ) :: M0I( NPAIR )    ! single-solute molalities
      INTEGER :: J

#ifdef verbose_aero
!     logical, save :: firstime = .true.
!     integer, save :: logdev
!     integer, external :: setup_logdev
#endif

C-----------------------------------------------------------------------

#ifdef verbose_aero
!     if ( firstime ) then
!        firstime = .false.
!        logdev = setup_logdev()
!     end if
#endif

C     Return if small concentration
      IF ( WI( 1 ) + WI( 2 ) + WI( 3 ) + WI( 4 )
     &   + WI( 5 ) + WI( 6 ) + WI( 7 ) + WI( 8 ) .LE. SMALL) THEN
         H2O_NEW = SMALL
         RETURN
      END IF

C     Set component array (mol/m^3) for determining salts
      CONC = WI   ! array assignment

C     Get the sub-case to use in determining salts
      CALL GETSC ( CONC, RH, T, SC )

#ifdef verbose_aero
!     write( logdev,* ) 'CALC_H2O -SC: ', sc
#endif

C     Initialize ion "pairs" (i.e., salts) used in ZSR
      CONCR( : ) = 0.0D0

C     Depending on case, determine moles of salts in solution (i.e., CONCR)
C     for ZSR calculation below

      IF ( SC .EQ. 'S2' ) THEN    ! sulfate poor (NH4-SO4 system), old K2
         CONCR( 4 )= MIN ( CONC( 2 ), 0.5D0 * CONC( 3 ) )  ! (NH4)2SO4

      ELSE IF ( SC .EQ. 'B4' ) THEN  ! sulfate rich (no acid), old L4, O4
         X = 2.0D0 * CONC( 2 ) - CONC( 3 )     ! 2SO4 - NH4
         Y = CONC( 3 ) - CONC( 2 )            ! NH4 - SO4
         IF ( X .LE. Y ) THEN
            CONCR( 13 ) = X      ! (NH4)3H(SO4)2 is MIN (X,Y)
            CONCR(  4 ) = Y - X  ! (NH4)2SO4
         ELSE
            CONCR( 13 ) = Y      ! (NH4)3H(SO4)2 is MIN (X,Y)
            CONCR(  9 ) = X - Y  ! NH4HSO4
         END IF

      ELSE IF ( SC .EQ. 'C2' ) THEN  ! sulfate rich (free acid), old M2, P2
         CONCR( 9 ) = CONC( 3 )                      ! NH4HSO4
         CONCR( 7 ) = MAX( CONC( 2 ) - CONC( 3 ), 0.0D0 )   ! H2SO4

      ELSE IF ( SC .EQ. 'N3' ) THEN    ! sulfate poor (NH4-SO4-NO3 system)
         CONCR( 4 ) = MIN ( CONC( 2 ), 0.5D0 * CONC( 3 ) )           ! (NH4)2SO4
         FNH4       = MAX ( CONC( 3 ) - 2.0D0 * CONCR( 4 ), 0.0D0 )  ! available NH4
         CONCR( 5 ) = MAX ( MIN ( FNH4, CONC( 4 ) ), 0.0D0 )         ! NH4NO3=MIN(NH4,NO3)

      ELSE IF ( SC .EQ. 'Q5' ) THEN    ! sulfate poor, sodium poor (NH4-SO4-NO3-Cl-Na)
         CONCR( 2 ) = 0.5D0 * CONC( 1 )                              ! Na2SO4
         FSO4       = MAX ( CONC( 2 ) - CONCR( 2 ), 0.0D0 )          ! available SO4
         CONCR( 4 ) = MAX ( MIN ( FSO4, 0.5D0 * CONC( 3 ) ), SMALL ) ! NH42S4=MIN(NH4,S4)
         FNH4       = MAX ( CONC( 3 ) - 2.0D0 * CONCR( 4 ), 0.0D0 )  ! available NH4
         CONCR( 5 ) = MIN ( FNH4, CONC( 4 ) )                        ! NH4NO3=MIN(NH4,NO3)
         FNH4       = MAX ( FNH4 - CONCR( 5 ), 0.0D0 )               ! avaialable NH4
         CONCR( 6 ) = MIN ( FNH4, CONC( 5 ) )                        ! NH4Cl=MIN(NH4,Cl)

      ELSE IF ( SC .EQ. 'R6' ) THEN   ! sulfate poor, sodium rich (NH4-SO4-NO3-Cl-Na)
         CONCR( 2 ) = CONC( 2 )                            ! Na2SO4
         FNA        = MAX ( CONC( 1 ) - 2.0D0 * CONCR( 2 ), 0.0D0 )

         CONCR( 3 ) = MIN ( FNA, CONC( 4 ) )               ! NaNO3
         FNO3       = MAX ( CONC( 4 ) - CONCR( 3 ), 0.0D0 )
         FNA        = MAX ( FNA - CONCR( 3 ), 0.0D0 )

         CONCR( 1 ) = MIN ( FNA, CONC( 5 ) )               ! NaCl
         FCL        = MAX ( CONC( 5 ) - CONCR( 1 ), 0.0D0 )
         FNA        = MAX ( FNA - CONCR( 1 ), 0.0D0 )

         CONCR( 5 ) = MIN ( FNO3, CONC( 3 ) )              ! NH4NO3
         FNO3       = MAX ( FNO3 - CONCR( 5 ), 0.0D0 )
         FNH4       = MAX ( CONC( 3 ) - CONCR( 5 ), 0.0D0 )

         CONCR( 6 ) = MIN (FCL, FNH4 )                     ! NH4Cl

      ELSE IF ( SC .EQ. 'I6' ) THEN   ! sulfate rich (no acid) (NH4-SO4-NO3-Cl-Na)
         CONCR(  2 ) = 0.5D0 * CONC( 1 )                          ! Na2SO4
         FSO4        = MAX ( CONC( 2 ) - CONCR( 2 ), 0.0D0 )
         CONCR( 13 ) = MIN ( CONC( 3 ) / 3.0D0, FSO4 / 2.0D0 )    ! (NH4)3H(SO4)2
         FSO4        = MAX ( FSO4 - 2.0D0 * CONCR( 13 ), 0.0D0 )
         FNH4        = MAX ( CONC( 3 ) - 3.0D0 * CONCR( 13 ), 0.0D0 )

         IF ( FSO4 .LE. SMALL ) THEN    ! reduce (NH4)3H(SO4)2, add (NH4)2SO4
            CONCR( 13 ) = MAX ( CONCR( 13 ) - FNH4, 0.0D0 )   ! (NH4)3H(SO4)2
            CONCR(  4 ) = 2.0D0 * FNH4                  ! (NH4)2SO4
         ELSE IF ( FNH4 .LE. SMALL ) THEN ! reduce (NH4)3H(SO4)2, add NH4HSO4
            CONCR(  9 ) = 3.0D0 * MIN ( FSO4, CONCR( 13 ) ) ! NH4HSO4
            CONCR( 13 ) = MAX ( CONCR( 13 ) - FSO4, 0.0D0 )
            IF ( CONCR( 2 ) .GT. SMALL ) THEN ! reduce Na2SO4, add NaHSO4
               FSO4        = MAX ( FSO4 - CONCR( 9 ) / 3.0D0, 0.0D0 )
               CONCR( 12 ) = 2.0D0 * FSO4                ! NaHSO4
               CONCR(  2 ) = MAX ( CONCR( 2 ) - FSO4, 0.0D0 )  ! Na2SO4
             END IF
         END IF

      ELSE IF ( SC .EQ. 'J3' ) THEN   ! sulfate rich (free acid) (NH4-SO4-NO3-Cl-Na)
         CONCR(  9 ) = CONC( 3 )                             ! NH4HSO4
         CONCR( 12 ) = CONC( 1 )                             ! NAHSO4
         CONCR(  7 ) = MAX ( CONC( 2 ) - CONC( 3 ) - CONC( 1 ), 0.0D0 ) ! H2SO4

      ! Crustal cases
      ELSE IF ( SC .EQ. 'V7' ) THEN  ! sulfate poor, sodium+crustal poor
         CASO4     = MIN ( CONC( 6 ), CONC( 2 ) )            ! CCASO4
         FSO4      = MAX ( CONC( 2 ) - CASO4, 0.0D0 )
         FCA       = MAX ( CONC( 6 ) - CASO4, 0.0D0 )

         CONCR( 17 ) = MIN ( 0.5D0 * CONC( 7 ), FSO4 )       ! CK2SO4
         FK          = MAX ( CONC( 7 ) - 2.D0 * CONCR( 17 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 17 ), 0.0D0 )

         CONCR( 2 )  = MIN ( 0.5D0 * CONC( 1 ), FSO4 )       ! CNA2SO4
         FNA         = MAX ( CONC( 1 ) - 2.0D0 * CONCR( 2 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 2 ), 0.0D0 )

         CONCR( 21 ) = MIN ( CONC( 8 ), FSO4 )               ! CMGSO4
         FMG         = MAX ( CONC( 8 ) - CONCR( 21 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 21 ), 0.0D0 )

         CONCR( 4 )  = MAX ( MIN ( FSO4 , 0.5D0 * CONC( 3 ) ) , SMALL ) ! CNH42S4
         FNH4        = MAX ( CONC( 3 ) - 2.0D0 * CONCR( 4 ), 0.0D0 )

         CONCR( 5 )  = MIN ( FNH4, CONC( 4 ) )               ! CNH4NO3
         FNH4        = MAX ( FNH4 - CONCR( 5 ), 0.0D0 )

         CONCR( 6 )  = MIN ( FNH4, CONC( 5 ) )               ! CNH4CL

      ELSE IF ( SC .EQ. 'U8' ) THEN  ! sulfate poor, crustal+sodium rich, crustal poor
         CASO4       = MIN ( CONC( 6 ), CONC( 2 ) )          ! CCASO4
         FSO4        = MAX ( CONC( 2 ) - CASO4, 0.0D0 )
         FCA         = MAX ( CONC( 6 ) - CASO4, 0.0D0 )

         CONCR( 17 ) = MIN ( 0.5D0 * CONC( 7 ), FSO4 )       ! CK2SO4
         FK          = MAX ( CONC( 7 ) - 2.0D0 * CONCR( 17 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 17 ), 0.0D0 )

         CONCR( 21 ) = MIN ( CONC( 8 ), FSO4 )               ! CMGSO4
         FMG         = MAX ( CONC( 8 ) - CONCR( 21 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 21 ), 0.0D0 )

         CONCR( 2 )  = MAX ( FSO4, 0.0D0 )                   ! CNA2SO4
         FNA         = MAX ( CONC( 1 ) - 2.0D0 * CONCR( 2 ), 0.0D0 )

         CONCR( 3 )  = MIN ( FNA, CONC( 4 ) )                ! NaNO3
         FNO3        = MAX ( CONC( 4 ) - CONCR( 3 ), 0.0D0 )
         FNA         = MAX ( FNA - CONCR( 3 ), 0.0D0 )

         CONCR( 1 )  = MIN ( FNA, CONC( 5 ) )                ! NaCl
         FCL         = MAX ( CONC( 5 ) - CONCR( 1 ), 0.0D0 )
         FNA         = MAX ( FNA - CONCR( 1 ), 0.0D0 )

         CONCR( 5 )  = MIN ( FNO3, CONC( 3 ) )               ! NH4NO3
         FNO3        = MAX ( FNO3 - CONCR( 5 ), 0.0D0 )
         FNH4        = MAX ( CONC( 3 ) - CONCR( 5 ), 0.0D0 )

         CONCR( 6 )  = MIN ( FCL, FNH4 )                     ! NH4Cl
         FCL         = MAX ( FCL - CONCR( 6 ), 0.0D0 )
         FNH4        = MAX ( FNH4 - CONCR( 6 ), 0.0D0 )

      ELSE IF ( SC .EQ. 'W13' ) THEN  ! sulfate poor, crustal+sodium rich
         CASO4       = MIN ( CONC( 2 ), CONC( 6 ) )          ! CASO4
         FCA         = MAX ( CONC( 6 ) - CASO4, 0.0D0 )
         FSO4        = MAX ( CONC( 2 ) - CASO4, 0.0D0 )

         CONCR( 17 ) = MIN ( FSO4, 0.5D0 * CONC( 7 ) )       ! K2SO4
         FK          = MAX ( CONC( 7 ) - 2.0D0 * CONCR( 17 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 17 ), 0.0D0 )

         CONCR( 21 ) = FSO4                                  ! MGSO4
         FMG         = MAX ( CONC( 8 ) - CONCR( 21 ), 0.0D0 )

         CONCR( 1 )  = MIN ( CONC( 1 ), CONC( 5 ) )          ! NACL
         FNA         = MAX ( CONC( 1 ) - CONCR( 1 ), 0.0D0 )
         FCL         = MAX ( CONC( 5 ) - CONCR( 1 ), 0.0D0 )

         CONCR( 16 ) = MIN ( FCA, 0.5D0 * FCL )              ! CACL2
         FCA         = MAX ( FCA - CONCR( 16 ), 0.0D0 )
         FCL         = MAX ( CONC( 5 ) - 2.0D0 * CONCR( 16 ), 0.0D0 )

         CONCR( 15 ) = MIN ( FCA, 0.5D0 * CONC( 4 ) )        ! CA(NO3)2
         FCA         = MAX ( FCA - CONCR( 15 ), 0.0D0 )
         FNO3        = MAX ( CONC( 4 ) - 2.0D0 * CONCR( 15 ), 0.0D0 )

         CONCR( 23 ) = MIN ( FMG, 0.5D0 * FCL )              ! MGCL2
         FMG         = MAX ( FMG - CONCR( 23 ), 0.0D0 )
         FCL         = MAX ( FCL - 2.0D0 * CONCR( 23 ), 0.0D0 )

         CONCR( 22 ) = MIN ( FMG, 0.5D0 * FNO3 )             ! MG(NO3)2
         FMG         = MAX ( FMG - CONCR( 22 ), 0.0D0 )
         FNO3        = MAX ( FNO3 - 2.0D0 * CONCR( 22 ), 0.0D0 )

         CONCR( 3 )  = MIN ( FNA, FNO3 )                     ! NANO3
         FNA         = MAX ( FNA - CONCR( 3 ), 0.0D0 )
         FNO3        = MAX ( FNO3 - CONCR( 3 ), 0.0D0 )

         CONCR( 20 ) = MIN ( FK, FCL )                       ! KCL
         FK          = MAX ( FK - CONCR( 20 ), 0.0D0 )
         FCL         = MAX ( FCL - CONCR( 20 ), 0.0D0 )

         CONCR( 19 ) = MIN ( FK, FNO3 )                      ! KNO3
         FK          = MAX ( FK - CONCR( 19 ), 0.0D0 )
         FNO3        = MAX ( FNO3 - CONCR( 19 ), 0.0D0 )

      ELSE IF ( SC .EQ. 'L9' ) THEN  ! sulfate rich, no free acid
         CASO4       = MIN ( CONC( 6 ), CONC( 2 ) )          ! CCASO4
         FSO4        = MAX ( CONC( 2 ) - CASO4, 0.0D0 )
         FCA         = MAX ( CONC( 6 ) - CASO4, 0.0D0 )

         CONCR( 17 ) = MIN ( 0.5D0 * CONC( 7 ), FSO4 )       ! CK2SO4
         FK          = MAX ( CONC( 7 ) - 2.0D0 * CONCR( 17 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 17 ), 0.0D0 )

         CONCR( 2 )  = MIN ( 0.5D0 * CONC( 1 ), FSO4 )       ! CNA2SO4
         FNA         = MAX ( CONC( 1 ) - 2.0D0 * CONCR( 2 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 2 ), 0.0D0 )

         CONCR( 21 ) = MIN ( CONC( 8 ), FSO4 )               ! CMGSO4
         FMG         = MAX ( CONC( 8 ) - CONCR( 21 ), 0.0D0 )
         FSO4        = MAX ( FSO4 - CONCR( 21 ), 0.0D0 )

         CONCR( 13 ) = MIN ( CONC( 3 ) / 3.0D0, FSO4 / 2.0D0 ) ! CLC
         FSO4        = MAX ( FSO4 - 2.0D0 * CONCR( 13 ), 0.0D0 )
         FNH4        = MAX ( CONC( 3 )- 3.0D0 * CONCR( 13 ),  0.0D0 )

         IF ( FSO4 .LE. SMALL ) THEN                           ! convert (NH4)3H(SO4)2 to (NH4)2SO4
            CONCR( 13 ) = MAX( CONCR( 13 ) - FNH4, 0.0D0 )
            CONCR(  4 ) = 2.0D0 * FNH4                         ! CNH42S4 

         ELSE IF ( FNH4 .LE. SMALL ) THEN                      ! convert (NH4)3H(SO4)2 to NH4HSO4
            CONCR(  9 ) = 3.0D0 * MIN( FSO4, CONCR( 13 ) )     ! CNH4HS4
            CONCR( 13 ) = MAX( CONCR( 13 ) - FSO4, 0.0D0 )     ! CLC, (NH4)3H(SO4)2
            IF ( CONCR( 2 ) .GT. SMALL ) THEN                  ! convert Na2SO4 to NaHSO4
               FSO4        = MAX( FSO4 - CONCR( 9 ) / 3.0D0, 0.0D0 )
               CONCR( 12 ) = 2.0D0 * FSO4                      ! CNAHSO4
               CONCR(  2 ) = MAX( CONCR( 2 ) - FSO4, 0.0D0 )   ! CNA2SO4
            END IF
            IF ( CONCR( 17 ) .GT. SMALL ) THEN                 ! convert K2SO4 to KHSO4
               FSO4        = MAX( FSO4 - CONCR( 9 ) / 3.0D0, 0.0D0 )
               CONCR( 18 ) = 2.0D0 * FSO4                      ! CKHSO4
               CONCR( 17 ) = MAX( CONCR( 17 ) - FSO4, 0.0D0 )  ! CK2SO4
            END IF
         END IF
         
      ELSE IF ( SC .EQ. 'K4' ) THEN ! sulfate super rich, free acid
         CONCR(  9 ) = CONC( 3 )                               ! NH4HSO4 = NH3
         CONCR( 12 ) = CONC( 1 )                               ! NaHSO4  = Na
         CONCR( 18 ) = CONC( 7 )                               ! KHSO4   = K
         CONCR( 21 ) = CONC( 8 )                               ! MgSO4   = Mg
         CONCR(  7 ) = MAX( CONC( 2 ) - CONC( 3 ) - CONC( 1 )
     &                    - CONC( 6 ) - CONC( 7 ) - CONC( 8 ), 0.0D0 ) ! H2SO4 = SO4 - NH4 - Na - Ca - K - Mg

      ELSE
         PRINT*, 'aero_subs.f: case not supported ',
     &          '(metastable reverse only)'
!        STOP
      END IF

C     Get single-solute molalities for ZSR calculation
      CALL GETM0I ( M0I )

C     Calculate H2O with ZSR and determine delta water
      WATER = 0.0D0
      DO J = 1, NPAIR
         WATER = WATER + CONCR( J ) / M0I( J )
      END DO

      WATER = MAX ( WATER, SMALL )
      H2O_NEW = WATER / Mw

      END SUBROUTINE CALC_H2O

c-----------------------------------------------------------------------
c
c ROUTINE
c   GETM0I
c
c DESCRIPTION
c   Determines single-solute molalities for the 13 possible salts at
c   the ambient RH.  These molalities are used in the ZSR calculation 
c   in CALC_H2O. Note that the molalities were determined at the beginning
c   of the time step, and so they are available in the IONS common block
c   of isrpia.inc.
c   Routine called by CALC_H2O.
c
c ARGUMENTS
c   OUTPUT
c     M0I : Single-solute molalities (mol/kg-H2O) for 13 salts
c
c-----------------------------------------------------------------------

      SUBROUTINE GETM0I (M0I)

      INCLUDE 'isrpia.inc'

c     ------------------------
c     Input/Output Declaration
c     ------------------------
      REAL*8  :: M0I(NPAIR)

c     ---------------
c     Begin Execution
c     ---------------

      M0I(:) = M0(:)

      END SUBROUTINE GETM0I

c-----------------------------------------------------------------------
c
c ROUTINE
c   GETSC
c
c DESCRIPTION
c   Determines the sub-case to use for water uptake calculations.
c   Follows the procedure of ISORROPIA.
c   Routine called by CALC_H2O.
c
c ARGUMENTS
c   INPUTS
c     CONC : Concentration (mol/m^3) of aerosol components. This routine
c            sets minimum CONC to 1.d-20
c     RH   : Relative humidity
c     T    : Temperature (K)
c     
c   OUTPUT
c     SC   : Sub-case for aerosol composition
c
c-----------------------------------------------------------------------

      SUBROUTINE GETSC (CONC, RH, T, SC)

      IMPLICIT NONE

      INTEGER, PARAMETER :: NCMP = 8    ! was NCMP  = 5    ! number of aerosol components
      REAL( 8 ), PARAMETER :: SMALL = 1.0D-20

C Arguments:
!     REAL( 8 ), INTENT( IN )    :: CONC(  NCMP )
      REAL( 8 ), INTENT( INOUT ) :: CONC(  NCMP )
      REAL( 8 ), INTENT( IN )    :: RH, T
      CHARACTER( 3 ), INTENT( OUT ) :: SC
            
C Local Variables:
      REAL( 8 ) :: T0, TCF                     ! DRH(T) factor
      REAL( 8 ) :: S4RAT, S4RATW, NaRAT, SRI   ! sulfate & sodium ratios
      REAL( 8 ) :: CRAT                        ! crustals ratio
      REAL( 8 ) :: FSO4                        ! "free" sulfate
      REAL( 8 ) :: DNACL, DNH4CL, DNANO3, DNH4NO3, DNH42S4 ! DRH values

      REAL( 8 ) :: GETASR    ! ISORROPIA function for sulfate ratio

      LOGICAL :: SCP1R, SCP2R, SCP3R, SCP4R ! concentration regime

C-----------------------------------------------------------------------

      SCP1R = .FALSE.
      SCP2R = .FALSE.
      SCP3R = .FALSE.
      SCP4R = .FALSE.

C     See if any components are negligible (see isocom.for)
      IF ( CONC( 1 ) + CONC( 4 ) + CONC( 5 ) + 
     &     CONC( 6 ) + CONC( 7 ) + CONC( 8 ) .LE. SMALL ) THEN       ! Ca,K,Mg,Na,Cl,NO3=0
         SCP1R = .TRUE.                                    
      ELSE IF ( CONC( 1 ) +        CONC( 5 ) +
     &          CONC( 6 ) + CONC( 7 ) + CONC( 8 ) .LE. SMALL ) THEN  ! Ca,K,Mg,Na,Cl=0
         SCP2R = .TRUE.                                     
      ELSE IF ( CONC( 6 ) + CONC( 7 ) + CONC( 8 ) .LE. SMALL ) THEN  ! Ca,K,Mg=0
         SCP3R = .TRUE.                                     
      ELSE                                                           ! all species
         SCP4R = .TRUE.
      END IF

      CONC( : ) = MAX ( CONC( : ), SMALL )

C     Deliquescence RH calculations
      DNH42S4 = 0.7997D0
      DNH4NO3 = 0.6183D0
      IF ( INT( T ) .NE. 298 ) THEN
         T0      = 298.15D0
         TCF     = 1.0D0 / T - 1.0D0 / T0
         DNH4NO3 = DNH4NO3 * EXP( 852.0D0 * TCF )
         DNH42S4 = DNH42S4 * EXP(  80.0D0 * TCF )
         DNH4NO3 = MIN ( DNH4NO3, DNH42S4 ) ! adjust for curves crossing T<271K
      END IF

C     Find sub-case "SC"
      IF ( SCP1R ) THEN ! NH4-S04 system

         IF ( RH .GE. DNH42S4 ) THEN
            S4RATW = GETASR( CONC( 2 ), RH ) ! aerosol sulfate ratio
         ELSE
            S4RATW = 2.0D0                ! dry aerosol sulfate ratio
         END IF
         S4RAT  = CONC( 3 ) / CONC( 2 )     ! sulfate ratio (NH4/SO4)

         IF ( S4RATW .LE. S4RAT ) THEN      ! sulfate poor
            SC = 'S2'
         ELSE IF ( 1.0D0 .LE. S4RAT .AND. S4RAT .LT. S4RATW ) THEN ! sulfate rich (no acid)
            SC = 'B4'
         ELSE IF ( S4RAT .LT. 1.0D0 ) THEN   ! sulfate rich (free acid)
            SC = 'C2'
         END IF

      ELSE IF ( SCP2R ) THEN ! NH4-SO4-NO3 system

         IF ( RH .GE. DNH4NO3 ) THEN
            S4RATW = GETASR( CONC( 2 ), RH )
         ELSE
            S4RATW = 2.0D0               ! dry aerosol ratio
         END IF
         S4RAT = CONC( 3 ) / CONC( 2 )

         IF ( S4RATW .LE. S4RAT ) THEN     ! sulfate poor
            SC = 'N3'
         ELSE IF ( 1.0D0 .LE. S4RAT .AND. S4RAT .LT. S4RATW ) THEN  ! sulfate rich (no acid)
            SC = 'B4'
         ELSE IF ( S4RAT .LT. 1.0D0 ) THEN    ! sulfate rich (free acid)
            SC = 'C2'
         END IF

      ELSE IF ( SCP3R )  THEN ! NH4-SO4-NO3-Na-Cl system

C        Adjust DRH of NH4NO3 for low temperature
         DNACL  = 0.7528D0
         DNANO3 = 0.7379D0
         DNH4CL = 0.7710D0
         IF ( INT( T ) .NE. 298 ) THEN
            DNACL   = DNACL  * EXP(  25.0D0 * TCF )
            DNANO3  = DNANO3 * EXP( 304.0D0 * TCF )
            DNH4CL  = DNH4Cl * EXP( 239.0D0 * TCF )
            DNH4NO3 = MIN ( DNH4NO3, DNH4CL, DNANO3, DNACL )
         END IF

         IF ( RH .GE. DNH4NO3 ) THEN
            FSO4   = CONC( 2 ) - CONC( 1 ) / 2.0D0   ! sulfate unbound by Na+
            FSO4   = MAX ( FSO4, SMALL )
            SRI    = GETASR ( FSO4, RH )
            S4RATW = ( CONC( 1 ) + FSO4 * SRI ) / CONC( 2 )
            S4RATW = MIN ( S4RATW, 2.0D0 )
         ELSE
            S4RATW = 2.0D0                       ! ratio for dry aerosol
         END IF
         S4RAT = ( CONC( 1 ) + CONC( 3 ) ) / CONC( 2 )
         NaRAT = CONC( 1 ) / CONC( 2 )

         IF ( S4RATW .LE. S4RAT .AND. NaRAT .LT. 2.0D0 ) THEN ! sulfate poor, sodium poor
            SC = 'Q5'
         ELSE IF ( S4RAT .GE. S4RATW .AND. NaRAT .GE. 2.0D0 ) THEN ! SO4 poor, Na rich
            SC = 'R6'
         ELSE IF ( 1.0D0 .LE. S4RAT .AND. S4RAT .LT. S4RATW ) THEN ! SO4 rich, no acid
            SC = 'I6'
         ELSE IF ( S4RAT .LT. 1.0D0 ) THEN ! sulfate rich, free acid
            SC = 'J3'
         END IF

      ELSE IF ( SCP4R ) THEN ! NH4-SO4-Na-Cl-Ca-K-Mg system

         ! Do I need an RH if check here????
         FSO4   = CONC( 2 ) - CONC( 1 ) / 2.0D0
     &          - CONC( 6 ) - CONC( 7 ) / 2.0D0 - CONC( 8 )  ! sulfate unbound by sodium,calcium,pottasium,magnesium
         FSO4   = MAX ( FSO4, SMALL )
         SRI    = GETASR( FSO4, RH )                         ! sulfate ratio for NH4+
         S4RATW = ( CONC( 1 ) + FSO4 * SRI + CONC( 6 )
     &            + CONC( 7 ) + CONC( 8 ) ) / CONC( 2 )      ! limiting sulfate ratio
         S4RATW = MIN ( S4RATW, 2.0D0 )
         S4RAT = ( CONC( 1 ) + CONC( 3 ) + CONC( 6 ) + CONC( 7 ) + CONC( 8 ) ) / CONC( 2 ) ! sulfate ratio
         NaRAT = ( CONC( 1 ) + CONC( 6 ) + CONC( 7 ) + CONC( 8 ) ) / CONC( 2 ) ! crustals+sodium ratio
         CRAT  = ( CONC( 6 ) + CONC( 7 ) + CONC( 8 ) ) / CONC( 2 )             ! crustals ratio

         IF ( S4RATW .LE. S4RAT .AND. NaRAT .LT. 2.0D0 ) THEN ! sulfate, sodium, crustal poor
            SC = 'V7'
         ELSE IF ( S4RAT .GE. S4RATW .AND. NaRAT .GE. 2.0D0 ) THEN
            IF ( CRAT .LE. 2.0D0 ) THEN       ! sulfate poor, dust+sodium rich, dust poor
               SC = 'U8'
            ELSE                              ! sulfate poor, dust+sodium rich, dust rich
               SC = 'W13'
            END IF
         ELSE IF ( 1.0D0 .LE. S4RAT .AND. S4RAT .LT. S4RATW ) THEN ! sulfate rich, no acid
            SC = 'L9'
         ELSE IF ( S4RAT .LT. 1.0D0 ) THEN     ! sulfate rich, free acid
            SC = 'K4'
         END IF
      END IF

      !print*,'SUBCASE identified in calc_h2o', SC

      END SUBROUTINE GETSC

c-----------------------------------------------------------------------
c
c ROUTINE
c   Compute_Flux
c
c DESCRIPTION
c   Determines the evaporative/condensational flux of volatile
c   inorganic species to aerosol modes. In cases where the resulting H+
c   flux is greater than a specified limit, the Pilinis et al. (2000)
c   AS&T approach is used to modify species vapor pressures such that
c   cond./evap. produces an H+ flux equal to the limit (which is 
c   proportional to the current mode concentration of H+).
c   Routine called by VOLINORG.
c
c ARGUMENTS
c   INPUTS
c     GNH3R8   : NH3(g) concentration (ug/m3) 
c     GNO3R8   : HNO3(g) concentration (ug/m3)
c     GCLR8    : HCl(g) concentration (ug/m3)
c     Ceq      : vapor concentration (mol/m3)
c     CondRate : effective condensation rate (I) of 3rd moment to mode
c              : [treat units as (1/s)]
c     Hplus    : aerosol hydrogen ion concentration (mol/m3) for mode
c     rate     : H2SO4(g) condensation rate (ug/m3/s) for mode
c
c   OUTPUT
c     Ceq      : modified vapor concentration (mol/m3)
c     J        : molar cond./evap. flux of volatile inorganics (mol/m3-s)
c
c-----------------------------------------------------------------------
      subroutine Compute_Flux (GNH3R8, GNO3R8, GCLR8, Ceq, 
     &                         CondRate, Hplus, rate, J)

      use AERO_INFO  ! Module containing CBLK indices & constants

      implicit none

c     --------------------
c     Argument Delcaration
c     --------------------
      real*8 GNH3R8, GNO3R8, GCLR8 ! gas concentrations (ug/m3)
      real*8 Ceq(nvolinorg)        ! vapor concentrations (mol/m3)
      real*8 CondRate ! effective condensation rate (I) for 3rd moment
      real*8 Hplus    ! hydrogen ion concentration for mode (mol/m3)
      real*8 rate
      real*8 J(nvolinorg) ! molar cond./evap. flux (mol/m3-s)

c     -----------------
c     Local Delcaration
c     -----------------
      real*8, parameter :: Afact = 1.d-1  ! factor for H+ limiter
      real*8, parameter :: small = 1.d-25
      real*8, parameter :: FAERNH3R8   = FAERNH3,
     &                     FAERHNO3R8  = FAERHNO3,
     &                     FAERHCLR8   = FAERHCL,   
     &                     FAERH2SO4R8 = FAERH2SO4 ! ug/m3 to mol/m3
      real*8 Cinf(nvolinorg) ! gas concentration in mol/m3
      real*8 Qk ! factor for modifying vapor press. based on H+ limit
      real*8 Hflux ! flux of H+ to mode from cond/evap 
      real*8 Hlim  ! maximum allowable H+ flux to mode 
      real*8 aa, bb, cc ! terms in quadratic equation
      integer isp   ! inorganic species index
      real*8 JH2SO4 ! molar flux of H2SO4(g) (mol/m3/s)
      real*8 CH2SO4 ! effective H2SO4(g) concentration (mol/m3)

c     ---------------
c     Begin Execution
c     ---------------
  
c     Convert gas concentration from ug/m3 to mol/m3    
      Cinf(KNH4) = GNH3R8 * FAERNH3R8
      Cinf(KNO3) = GNO3R8 * FAERHNO3R8
      Cinf(KCL)  = GCLR8  * FAERHCLR8
     
c     Calculate cond/evap fluxes (no H+ limiting)
      do isp = 1, nvolinorg
         J(isp) = CondRate * (Cinf(isp) - Ceq(isp))
      enddo

c     Convert rate to mol/m3/s and get effective Cinf for H2SO4(g)
      JH2SO4  = rate * FAERH2SO4R8  
      CH2SO4  = JH2SO4 / CondRate   
     
c     Limit H+ flux (Pilinis et al., 2000, AS&T). Note: J is flux
c     to entire mode, not one particle
      Hlim  = Afact * Hplus
      Hflux = 2.d0 * JH2SO4 + J(KNO3) + J(KCL) - J(KNH4)

c     If Hflux is too large, limit the flux by modifying species
c     vapor pressures with Qk factor (Pilinis et al., 2000, AS&T).      
      if (abs(Hflux) > Hlim) then
         Hlim = sign(Hlim,Hflux)

c        Solve quadratic for Qk: aa*Qk^2 + bb*Qk + cc = 0
         aa = Ceq(KCL) + Ceq(KNO3)

         bb = Hlim / CondRate +
     &        Cinf(KNH4) - Cinf(KNO3) - Cinf(KCL) - 2.d0 * CH2SO4

         cc = -Ceq(KNH4) 

         Qk = 0.d0 ! initialize Qk

         if (aa < small .AND. 0.d0 < bb) then ! bb*Qk + cc = 0 
           Qk = -cc / bb
         elseif (aa < small .AND. bb <= 0.d0) then 
           Qk = 0.d0
         elseif (-cc < small .AND. bb < 0.d0) then  ! aa*Qk^2 + bb*Qk = 0
           Qk = -bb / aa
         elseif (-cc < small .AND. 0.d0 <= bb) then  
           Qk = 0.d0
         else
           Qk = (-bb + sqrt (bb**2 - 4.d0*aa*cc)) / (2.d0 * aa)
           if (bb**2-4.d0*aa*cc < 0) then
              print*, 'Compute_Flux, sqrt<0'
              Qk = 0.d0
           endif
         endif

c        Modify vapor pressures and get new fluxes
         if (Qk > small) then
           Ceq(KNH4) = Ceq(KNH4) / Qk
           Ceq(KNO3) = Ceq(KNO3) * Qk
           Ceq(KCl)  = Ceq(KCl)  * Qk
           do isp = 1, nvolinorg
             J(isp) = CondRate * (Cinf(isp) - Ceq(isp))
           enddo
         endif

      endif

      end subroutine Compute_Flux



