
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

C RCS file, release, date & time of last delta, author, state, [locker]
C $Header$

C what(1) key, module and SID; SCCS file; date and time of last delta:
C %W% %P% %G% %U%

c /////////////////////////////////////////////////////////////////////
c  SUBROUTINE HETCHEM calculates the heterogeneous conversion of N2O5
c    to HNO3 by following the Model Description section by Pleim et 
c    al. (1995).
c
c  KEY SUBROUTINES CALLED: none
c
c  KEY FUNCTIONS CALLED: N2O5PROB
c
c  REVISION HISTORY:
c     First version was coded in November 2007 by Dr. Prakash Bhave
c     using excerpts of the EQL3 subroutine in CMAQv4.6.  Entries
c     from the EQL3 revision history which are specific to the
c     heterogeneous chemistry calculations have been copied here, to
c     preserve that history in the event that the EQL3 subroutine is
c     later removed from the aerosol code.
c
c FSB 10/23/01 Revised to include the heterogeneous reaction of N2O5 
c              with aerosol to produce HNO3, based on Pleim et al 
c              (1995).  AIRPRS & DT added to call vector. These 
c              modifications assume that GETPAR has been called prior 
c              to calling EQL3.  It is also assumed that AH2OI and AH2OJ 
c              have been added to the transport routines.
c 
c GLG 08/15/02 Revised to use radius instead of diameter in calculation 
c              of N2O5->HNO3 rate constant
c
c GLG 03/10/03 Revised to use composition-dependent gamma from Riemer
c              et al. (2003)
c
c SJR 03/14/03 Revised to use the effective diameter in the calculation 
c              of N2O5->HNO3 rate constant instead of the geometric
c              mean diameter
c
c SJR 04/15/03 Corrected units in the HNO3 yield from the heterogeneous 
c              N2O5 Rxn of Riemer et al. (2003)
c
c GS  04/04/06 Revised to use T,RH-dependent gamma from Evans & Jacob 
c              (2005).  Retained ratio of GAMMA1/GAMMA2 from Riemer et
c              al. (2003).
c
c PVB 04/06/06 Added GAMMA to the call vector, so it can be written
c              to the aerosol diagnostic file.
c
c JOY 04/04/07 Optimized GAMMA calculation; initialized GAMMA in case
c              RH < 1%; Note: some compilers recognize GAMMA as an
c              intrinsic GAMMA function.
c
c PVB 11/06/07 Copied excerpts of the EQL3 subroutine to create this
c              new subroutine.  Moved all calculations of GAMMA to a 
c              function subprogram, N2O5PROB.  Revised to use GAMMA 
c              parameterization of Davis et al (2008), by default.
c
c GS  03/31/08 Added a heterogeneous reaction producing HONO 
c
c JTK 4/17/08 Moved molar mass and conversion factors to AERO_INFO.f
c
c  REFERENCES:
c   1. Pleim, J.E., F.S. Binkowski, J.K.S. Ching, R.L. Dennis, and N.V.
c      Gallani, An improved representation of the reaction of N2O5 on
c      aerosols for mesoscale air quality models.  In "Regional 
c      Photochemical Measurement and Modeling Studies, Vol 2 - Results
c      and Status of Modeling," Eds A.J. Ranzieri and P.A. Solomon, pp 
c      904-913, 1995.
c
c   2. Davis, J.M., P.V. Bhave, and K.M. Foley, Parameterization of N2O5
c      reaction probabilities on the surface of particles containing
c      ammonium, sulfate, and nitrate.  Atmos. Chem. Phys., 2008, in
c      press.
c
c   3. Vogel, B., H. Vogel, J. Kleffman, and R. Kurtenbach, Measured and
c      simulated vertical profiles of nitrous acid - Part II. Model 
c      simulations and indications for a photolytic source, Atmospheric 
c      Environment, 37, 2957-2966, 2003.
c 
c   4. Sarwar, G., S.J. Roselle, R. Mathur, W. Appel, R.L. Dennis, and
c      B. Vogel, A comparison of CMAQ HONO predictions with observations
c      from the Northeast Oxidant and Particle Study, Atmospheric 
c      Environment, 2008, in press.
c
C----------------------------------------------------------------------

      SUBROUTINE HETCHEM( NSPCSDA, CBLK, GAMMA, AIRTEMP, AIRRH, 
     &                    AIRPRS, DT )

      USE AERO_INFO        ! Module containing CBLK indices and 
                           ! several constants
      IMPLICIT NONE

C *** ARGUMENTS

      INTEGER, INTENT( IN )    :: NSPCSDA   ! number of species in CBLK
      REAL,    INTENT( INOUT ) :: CBLK( NSPCSDA ) ! subset of CGRID
      REAL,    INTENT( OUT )   :: GAMMA     ! N2O5->NO3 rxn probability
      REAL,    INTENT( IN )    :: AIRTEMP   ! Air temperature [ K ]
      REAL,    INTENT( IN )    :: AIRRH     ! Fractional rel humidity
      REAL,    INTENT( IN )    :: AIRPRS    ! Air pressure [ Pa ]
      REAL,    INTENT( IN )    :: DT        ! Synchronization time step

C *** PARAMETERS

C *** heterogeneous N2O5 -> HNO3 reaction parameters
C ***  molecular diffusivity of N2O5 at 101325.0 [ Pa ] and 273.15 [ K ]

      REAL, PARAMETER :: STD_DIFF_N2O5 = 0.1E-4   ! [ m ** 2 / sec ]

C *** other factors

      REAL, PARAMETER :: CONMIN = 1.0E-30   ! conc lower limit [ ug/m**3 ]
      REAL, PARAMETER :: GPKG = 1.0E+03     ! g/kg

C *** LOCAL VARIABLES

C *** chemical species concentrations

      REAL      GHNO3    ! gas-phase nitric acid [ug/m3]
      REAL      GN2O5    ! gas-phase dinitrogen pentoxide [ug/m3]
      REAL      GNO2     ! gas-phase NO2 [ug/m3]
      REAL      GHONO    ! gas-phase HONO [ug/m3]

C *** 2nd and 3rd moments before equilibration (without H2O)

      REAL      OLD_M3_I, OLD_M3_J
      REAL      OLD_M2_I, OLD_M2_J

C *** variables for N2O5 + H2O -> 2 HNO3 conversion

      REAL      WET_M3_I, WET_M3_J   ! M3 before equilibration w.H2O
      REAL      WET_M2_I, WET_M2_J   ! M2 before equilibration w.H2O
      REAL      DG_AT_WET, DG_AC_WET ! Initial median diameter w.H2O
      REAL      DE_AT_WET, DE_AC_WET ! Initial effective diameter w.H2O
      REAL      XXF_AT, XXF_AC       ! modal factors to calculate KN2O5
      REAL      CBAR       ! molecular velocity (m/s)
      REAL      DIFF_N2O5  ! ambient molecular diffusivity [m2/s]
      REAL      N2O5PROB   ! function to compute GAMMA
      REAL      KN2O5      ! pseudo-first order rate constant
      REAL      EXPDT_N2O5 ! fraction of N2O5 left after chemical rxn

C *** variables for 2 NO2 + H2O -> HONO + HNO3 conversion

      REAL      KNO2       ! pseudo-first order rate constant
      REAL      EXPDT_NO2  ! fraction of NO2 left after chemical rxn
      REAL      TOTSURFA   ! aerosol surface area (m**2/m**3)

C.......................................................................


c *** fetch vapor-phase concentrations [ug/m3]

      GHNO3 = CBLK( VHNO3 )
      GN2O5 = CBLK( VN2O5 )
      GNO2  = CBLK( VNO2  )
      GHONO = CBLK( VHONO )

c *** set up variables needed for calculating KN2O5

c *** capture values of "dry" 2nd and 3rd moments before equilibration
c     the folowing code assumes that GETPAR has been called with
c     M3_WET_FLAG set to .FALSE. and that the 2nd and 3rd moments have
c     been adjusted for the new SOA.

      OLD_M3_I = CBLK( VAT3 )
      OLD_M3_J = CBLK( VAC3 )
      OLD_M2_I = CBLK( VAT2 )
      OLD_M2_J = CBLK( VAC2 )

c *** compute GAMMA as function of TEMP, RH, & particle composition
c     Note: the last argument to this function can be changed to use 
c     a different parameterization of GAMMA.

      GAMMA = N2O5PROB( NSPCSDA, CBLK, AIRTEMP, AIRRH, 0 )

c *** calculate molecular speed (m/s) using Eq 4 of Pleim et al (1995)

      CBAR = SQRT( 8.0 * RGASUNIV * AIRTEMP * GPKG / ( PI * MWN2O5 ) )

c *** correct molecular diffusivity for ambient conditions

      DIFF_N2O5 = STD_DIFF_N2O5
     &          * ( ( AIRTEMP / STDTEMP ) ** 1.75 )
     &          * ( STDATMPA / AIRPRS )

c *** estimate the "wet third moments" by adding aerosol water
c      Note: this is the H2O concentration from previous time step

      WET_M3_I = OLD_M3_I + H2OFAC * CBLK( VH2OAI )
      WET_M3_J = OLD_M3_J + H2OFAC * CBLK( VH2OAJ )

c *** calculate "wet second moment" assuming that H2O does not
c     affect the geometric standard deviation

      WET_M2_I = OLD_M2_I * ( WET_M3_I / OLD_M3_I ) ** TWO3
      WET_M2_J = OLD_M2_J * ( WET_M3_J / OLD_M3_J ) ** TWO3

c *** calculate "wet" geometric mean (same as median) diameters

      DG_AT_WET = CBLK( VDGAT ) * SQRT( WET_M2_I / OLD_M2_I )
      DG_AC_WET = CBLK( VDGAC ) * SQRT( WET_M2_J / OLD_M2_J )

C *** calculate effective diameters using Eq 3 of Pleim et al (1995)

      DE_AT_WET = DG_AT_WET * EXP( 1.5 * ( LOG(CBLK( VSGAT )) ** 2.0 ) )
      DE_AC_WET = DG_AC_WET * EXP( 1.5 * ( LOG(CBLK( VSGAC )) ** 2.0 ) )

c *** calculate pseudo-first order rate constant using Eq 2 of
c     Pleim et al (1995)

      XXF_AT = WET_M2_I / 
     &         ( 4.0 + 0.5 * DE_AT_WET * GAMMA * CBAR / DIFF_N2O5 )
      XXF_AC = WET_M2_J /
     &         ( 4.0 + 0.5 * DE_AC_WET * GAMMA * CBAR / DIFF_N2O5 )
      KN2O5 =   GAMMA * CBAR * PI * ( XXF_AT + XXF_AC )

c *** calculate fraction of N2O5 remaining after chemical reaction

      EXPDT_N2O5 = EXP( - KN2O5 * DT )


c *** set up variables needed for calculating KNO2

c *** calculate aerosol surface area

      TOTSURFA  = ( WET_M2_I + WET_M2_J ) * PI

c *** calculate pseudo-first order rate constant using Eq 1 of Vogel
c     et al. (2003). Units of KNO2 is in 1/min in the paper; divide it
c     by 60 to convert it into 1/sec

      KNO2 = MAX ( 0.0, 5.0E-5 * TOTSURFA )

c *** calculate fraction of NO2 remaining after chemical reaction

      EXPDT_NO2 = EXP( -2.0 * KNO2 * DT )

c *** compute new gas-phase concs after heterogeneous reactions occur

c *** adjust nitrous acid for contribution from NO2

      GHONO = GHONO
     &      + ( 0.5 * GNO2  * FAERNO2  * DFHONO ) * ( 1.0 - EXPDT_NO2 )

c *** adjust nitric acid for contributions from N2O5 and NO2

      GHNO3 = GHNO3
     &      + ( 2.0 * GN2O5 * FAERN2O5 * DFHNO3 ) * ( 1.0 - EXPDT_N2O5 )
     &      + ( 0.5 * GNO2  * FAERNO2  * DFHNO3 ) * ( 1.0 - EXPDT_NO2 )

c *** adjust N2O5 for heterogeneous loss

      GN2O5 = GN2O5 * EXPDT_N2O5

c *** adjust NO2 for heterogeneous loss

      GNO2  = GNO2  * EXPDT_NO2

C *** UPDATE CBLK ARRAY
c     HNO3, N2O5, NO2, and HONO concentrations are changed in this subroutine.
c     Ensure that all species remain above the minimum concentration.  

      CBLK( VHNO3 ) = MAX( GHNO3, CONMIN )
      CBLK( VN2O5 ) = MAX( GN2O5, CONMIN )
      CBLK( VNO2  ) = MAX( GNO2,  CONMIN )
      CBLK( VHONO ) = MAX( GHONO, CONMIN )

      RETURN

      END SUBROUTINE HETCHEM

c //////////////////////////////////////////////////////////////////////
c  FUNCTION N2O5PROB calculates the N2O5 heterogeneous reaction
c    probability, which is the fraction of collisions between a gaseous
c    N2O5 molecule and a particle surface that leads to nitrate 
c    production.  In the literature, this probability is commonly
c    referred to with the Greek letter, GAMMA.  To avoid conflicts with
c    the intrinsic GAMMA function on some compilers, we refer to the
c    reaction probability as N2O5PROB in this function.
c      A variety of parameterizations of N2O5PROB are available in this 
c    function.  Users may select among the different parameterizations 
c    by changing the input argument, GPARAM.  This argument may take on 
c    the following values (see code for further details):
c     1. Constant value of 0.1 based on Dentener & Crutzen (1993)
c     2. Function of particle SO4 and NO3, based on Riemer et al. (2003)
c     3. Function of RH, Temp, and particle composition, based on a 
c        combination of parameterizations by Evans & Jacob (2005) and
c        Riemer et al. (2003)
c    If GPARAM matches none of the above values, the default calculation
c    of N2O5PROB is a function of RH, T, particle composition, and phase
c    state, based on the parameterization by Davis et al. (2008).
c
c  KEY SUBROUTINES CALLED: none
c
c  KEY FUNCTIONS CALLED: CRHB, IRHX
c
c  REVISION HISTORY:
c     First version was coded in November 2007 by Dr. Prakash Bhave
c     using excerpts of the HETCHEM subroutine, which contained only
c     one option for computing N2O5PROB (i.e., GPARAM = 3).
c
c PVB 11/03/07 Removed code that sets N2O5PROB to zero when RH < 1%.
c
c PVB 11/05/07 Corrected GPARAM = 3 option to fix the typographical
c              error in the paper by Evans & Jacob (2005), which was
c              found by Dr. Jerry Davis.
c
c PVB 04/11/08 Updated formulas for LAM1 & LAM2 based on revised paper
c              by Davis et al. (2008).  Added APNDX flag so users may
c              switch between base parameterization and the alternative
c              discussed in Appendix A by Davis et al.  Set default
c              parameterization to match equations in Appendix A.
c              Reduced all regression coefficients by one decimal place
c              for consistency with revised paper.
c
c JTK 4/17/08 Moved molar mass to AERO_INFO.f
c
c  REFERENCES:
c   1. Dentener, F.J. and P.J. Crutzen, Reaction of N2O5 on tropospheric
c      aerosols: Impact of global distributions of NOx, O3, and OH.
c      J. Geophys. Res., Vol 98, 7149-7163, 1993.
c
c   2. Riemer, N., H. Vogel, B. Vogel, B. Schell, I. Ackermann, C.
c      Kessler, and H. Hass, Impact of the heterogeneous hydrolysis
c      of N2O5 on chemistry of nitrate aerosol formation in the lower
c      troposphere under photosmog conditions.  J. Geophys. Res., Vol 
c      108, No D4, 4144, doi:10.1029/2002JD002436, 2003.
c
c   3. Evans, M.J. and D.J. Jacob, Impact of new laboratory studies of 
c      N2O5 hydrolysis on global model budgets of tropospheric nitrogen
c      oxides, ozone, and OH.  Geophys. Res. Lett., 32, L09813, 
c      doi:10.1029/2005GL022469, 2005.
c
c   4. Davis, J.M., P.V. Bhave, and K.M. Foley, Parameterization of N2O5
c      reaction probabilities on the surface of particles containing
c      ammonium, sulfate, and nitrate.  Atmos. Chem. Phys., 2008, in
c      press.
c
c   5. Mentel, T.F., M. Sohn, and A. Wahner, Nitrate effect in the
c      heterogeneous hydrolysis of dinitrogen pentoxide on aqueous
c      aerosols.  Phys. Chem. Chem. Phys., 1, 5451-5457, 1999.

      REAL FUNCTION N2O5PROB( NSPCSDA, CBLK, TEMP, RH, GPARAM )

      USE AERO_INFO        ! Module containing CBLK indices and 
                           ! several constants
      IMPLICIT NONE

C *** ARGUMENTS

      INTEGER, INTENT( IN ) :: NSPCSDA         ! number of species in CBLK
      REAL,    INTENT( IN ) :: CBLK( NSPCSDA ) ! main array of variables
      REAL,    INTENT( IN ) :: TEMP            ! Air temperature [ K ]
      REAL,    INTENT( IN ) :: RH              ! Fractional relative humidity
      INTEGER, INTENT( IN ) :: GPARAM          ! switch to select among
                                               !  parameterizations

C *** PARAMETERS

C *** switch for alternative parameterization of LAM1 & LAM2
C     when APNDX = .TRUE. (default), Eqs A1-A2 are used for reaction
C     probability on aqueous sulfate particles.  Alternatively, set
C     APNDX = .FALSE. to use Eqs 4-5.

      LOGICAL, PARAMETER :: APNDX = .TRUE.

C *** LOCAL VARIABLES
      
C *** chemical species concentrations [ug/m3]

      REAL      ANH4      ! i+j mode ammonium
      REAL      ANO3      ! i+j mode nitrate
      REAL      ASO4      ! i+j mode sulfate

C *** variables for computing N2O5PROB when GPARAM = 2 or 3

      REAL      FRACSO4   ! aerosol mass ratio of SO4/(SO4+NO3)
      REAL      GAMMA1    ! upper limit of rxn prob
      REAL      GAMMA2    ! lower limit of rxn prob
      REAL      ALPHA     ! RH-dependent parameter to compute GAMMA1
      REAL      BETA      ! TEMP-dependent parameter to compute GAMMA1

C *** variables for default parameterization of N2O5PROB 

      LOGICAL   CRHB      ! function to determine if RH is below CRH
      LOGICAL   CRYSTAL   ! true if ambient RH < CRH, false otherwise
      LOGICAL   IRHX      ! function to determine whether RH exceeds IRH
      LOGICAL   FROZEN    ! true if ambient RH > IRH, false otherwise
      REAL      NNO3      ! particle-phase nitrate [micromoles/m3]
      REAL      NSO4      ! particle-phase sulfate [micromoles/m3]
      REAL      NNH4      ! particle-phase ammonium [micromoles/m3]
      REAL      NANI      ! particle-phase anions [micromoles/m3]
      REAL      X1        ! mole fraction of ammonium bisulfate
      REAL      X2        ! mole fraction of ammonium sulfate
      REAL      X3        ! mole fraction of ammonium nitrate
      REAL      LAM1      ! logit transformation of N2O5PROB on 
      REAL      LAM2      !   aqueous NH4HSO4 [LAM1], aqueous (NH4)2SO4
      REAL      LAM3      !   [LAM2], aqueous NH4NO3 [LAM3], and dry
      REAL      LAMD      !   sulfate-containing particles [LAMD]
      REAL      GAM1      ! reaction probability on aqueous NH4HSO4
      REAL      GAM2      !    "          "      "     "    (NH4)2SO4
      REAL      GAM3      !    "          "      "     "    NH4NO3
      REAL      GAMD      !    "          "      " dry sulfate particles
      REAL      T293,T291 ! temperature threshold variables
      REAL      RH46      ! RH threshold variable

C *** statement function for inverting the logit transformation given
C     in Eq 7 by Davis et al (2008)

      REAL      LOGITINV  ! statement function
      REAL      XX        ! dummy argument for LOGITINV
      LOGITINV(XX) = 1.0 / ( 1.0 + EXP(MAX(88.,-XX)) )

C.......................................................................

c *** retrieve particle-phase ammonium, nitrate, and sulfate [ug/m3]

      ANH4 = CBLK( VNH4AJ ) + CBLK( VNH4AI )
      ANO3 = CBLK( VNO3AJ ) + CBLK( VNO3AI )
      ASO4 = CBLK( VSO4AJ ) + CBLK( VSO4AI )

c *** User Option: GPARAM = 1
c     Dentener and Crutzen (1993) recommended a constant value of
c     N2O5PROB = 0.1, which was used in CMAQ prior to ver4.3.  In more
c     recent literature, this value has been recognized as an upper
c     estimate of N2O5PROB so it should not be used for routine
c     simulations.  It is included here only to facilitate sensitivity
c     studies by CMAQ model users.

      IF ( GPARAM .EQ. 1 ) THEN
         N2O5PROB = 0.1
         RETURN
      END IF

c *** User Options: GPARAM = 2 and 3
c     These options both employ Eqs 2 and 3 by Riemer et al (2003), in
c     which N2O5PROB varies according to the particle-phase sulfate and 
c     nitrate concentrations.  In both options, the NO3 effect (i.e., 
c     GAMMA1/GAMMA2) is assumed to be a factor of 10 based on Mentel et
c     al (1999) and Riemer et al (2003).
c      - When GPARAM = 2, upper limit of N2O5PROB is fixed at 0.02.
c        This was the default setting in CMAQ ver4.3 through ver4.5.1.
c      - When GPARAM = 3, upper limit of N2O5PROB is a function of 
c        ambient TEMP & RH based on the "Sulfate" equation in Table 1
c        by Evans & Jacob (2005).  This was the default setting in CMAQ
c        ver4.6.  After that release, a typographical error was found
c        in the published equation of Evans & Jacob (2005) so this code
c        has been corrected accordingly.

      IF ( GPARAM .EQ. 2 ) THEN

         GAMMA1 = 0.02

      ELSEIF ( GPARAM .EQ. 3 ) THEN         

c        In this function, RH is in fractional units whereas the
c        published equation by Evans&Jacob refers to RH as a percentage.

         ALPHA = 2.79E-4
     &         + RH * ( 1.3E-2 + RH * ( -3.43E-2 + 7.52E-2 * RH ) )

c        To fix the typographical error by Evans & Jacob (2005), the
c        sign of BETA has been switched in this code.

         IF ( TEMP .LT. 282.0 ) THEN
            GAMMA1 = 3.0199517 * ALPHA   ! (10.0 ** 0.48) * ALPHA
         ELSE
            BETA  = 0.04 * ( 294.0 - TEMP )
            GAMMA1 = ALPHA * ( 10.0 ** BETA )
         END IF

      END IF

      IF ( (GPARAM .EQ. 2) .OR. (GPARAM .EQ. 3) ) THEN

         IF ( ANO3 .GT. 0.0 ) THEN
            FRACSO4 = ASO4 / ( ASO4 + ANO3 )
         ELSE
            FRACSO4 = 1.0
         END IF

         GAMMA2 = 0.1 * GAMMA1
         N2O5PROB = GAMMA2 + FRACSO4 * ( GAMMA1 - GAMMA2 )
         RETURN

      END IF

c *** Default setting in current version of CMAQ:
c     This code implements the paramaterization given in Eq 15 by Davis 
c     et al (2008), in which N2O5PROB is a function of RH, TEMP, 
c     particle composition, and phase state.  Note: In this function, RH
c     is in fractional units whereas the published equations refer to RH
c     as a percentage.

c *** Check whether the ambient RH is below the crystallization RH for 
c     the given inorganic particle composition.

      CRYSTAL = CRHB( NSPCSDA, CBLK, RH, .TRUE. )

c *** Check whether the ambient RH exceeds the RH of ice formation.

      FROZEN = IRHX( TEMP, RH )

c *** Set N2O5PROB to a constant value if particles contain ice, based on
c     Eq 14 by Davis et al (2008).

      IF ( FROZEN ) THEN
         N2O5PROB = 0.02                              ! Eq 14

c *** Compute mole-fractional-composition of particles based on Eq 11 by
c     Davis et al (2008).

      ELSE
         NNO3 = ANO3 / MWNO3
         NSO4 = ASO4 / MWSO4
         NNH4 = ANH4 / MWNH4
         NANI = NNO3 + NSO4
         
         X3 = NNO3 / NANI
         X2 = MAX( 0.0, MIN( 1.0 - X3, NNH4/NANI - 1.0 ) )
         X1 = 1.0 - ( X2 + X3 )

c *** Compute N2O5PROB on pure NH4NO3 particles using Eqs 6 and 8 by
c     Davis et al (2008).

         LAM3 = -8.10774 + 4.902 * RH                 ! Eq 6
         GAM3 = MIN( LOGITINV(LAM3), 0.0154 )         ! Eq 8

c *** Compute N2O5PROB on dry particles using Eqs 9, 10, and 13 by 
c     Davis et al (2008).

         IF ( CRYSTAL ) THEN
            T293     = MAX( 0.0, TEMP - 293.0 )
            LAMD     = -6.13376 + 3.592 * RH          ! Eq 9
     &                - 0.19688 * T293
            GAMD     = MIN( LOGITINV(LAMD), 0.0124 )  ! Eq 10
            N2O5PROB = ( X1 + X2 ) * GAMD             ! Eq 13
     &                + X3 * MIN( GAMD, GAM3 )

c *** Compute N2O5PROB on aqeuous particles using Eqs A1, A2, 8, and 12
c     by Davis et al (2008).  When APNDX = .TRUE. (default), Eqs A1-A2
c     are used for reaction probability on aqueous sulfate particles.
c     Switch to .FALSE. if Eqs 4-5 are desired.  See Appendix A by
c     Davis et al. (2008) for a discussion of these options.

         ELSE
            T291 = MAX( 0.0, TEMP - 291.0 )
            IF ( APNDX ) THEN
               RH46 = MIN( 0.0, RH - 0.46 )
               LAM2  = -3.64849 + 9.553 * RH46        ! Eq A2
               LAM1  = LAM2 + 0.97579                 ! Eqs A1 & A2
     &                - 0.20427 * T291
            ELSE
               LAM1  = -4.10612 + 2.386 * RH          ! Eq 4
     &                - 0.23771 * T291
               LAM2  = LAM1 - 0.80570                 ! Eqs 4 & 5
     &                + 0.10225 * T291
            END IF
            GAM1     = MIN( LOGITINV(LAM1), 0.08585 ) ! Eq 8
            GAM2     = MIN( LOGITINV(LAM2), 0.053 )   ! Eq 8
            N2O5PROB = ( X1 * GAM1 )                  ! Eq 12
     &               + ( X2 * GAM2 )
     &               + ( X3 * GAM3 )

         END IF

      END IF
      
      RETURN
      
      END


c //////////////////////////////////////////////////////////////////////
c  FUNCTION CRHB determines whether the ambient RH is below the
c    crystallization relative humidity (CRH).  The output of this
c    logical function is .TRUE. when the ambient RH is below the CRH 
c    and .FALSE. otherwise.
c      The empirical equations developed by Martin et al (2003) are
c    applied to determine the CRH for a given mixture of sulfate, 
c    nitrate, and ammonium.  Though those equations are validated only
c    at 293K, they are applied at all ambient temperatures because
c    insufficient data exist to estimate the temperature dependence of
c    the CRH of mixed sulfate-nitrate-ammonium particles.
c      Users can opt to compute either the RH of initial crystal
c    formation (i.e., COMPLETE .EQ. .FALSE.) or the RH of compete
c    crystallization (i.e., COMPLETE .EQ. .TRUE.).
c
c  REFERENCES:
c   1. Martin, S.T., J.C. Schlenker, A. Malinowski, H.-M. Hung, and
c      Y. Rudich, Crystallization of atmospheric sulfate-nitrate-
c      ammonium particles.  Geophys. Res. Lett., 30(21), 2102, 
c      doi:10.1029/2003GL017930, 2003.
c
c  REVISION HISTORY:
c   PVB 11/05/07 Coded the first version.
c   JTK 4/17/08 Moved molar mass to AERO_INFO.f

      LOGICAL FUNCTION CRHB( NSPCSDA, CBLK, RH, COMPLETE )

      USE AERO_INFO          ! Module containing CBLK indices

      IMPLICIT NONE

C *** ARGUMENTS

      INTEGER, INTENT( IN ) :: NSPCSDA         ! number of species in CBLK
      REAL, INTENT( IN )    :: CBLK( NSPCSDA ) ! main array of variables
      REAL, INTENT( IN )    :: RH              ! fractional relative humidity
      LOGICAL, INTENT( IN ) :: COMPLETE        ! flag deciding which CRH
                                               !  equation to use

C *** LOCAL VARIABLES
      
C *** chemical species concentrations [micromoles/m3]

      REAL      NSO4     ! i+j mode sulfate
      REAL      NNO3     ! i+j mode nitrate
      REAL      NNH4     ! i+j mode ammonium
      REAL      NCAT     ! i+j mode cations
      REAL      NANI     ! i+j mode anions

C *** cation and anion mole fractions used in CRH equations

      REAL X         ! ammonium/cation mole fraction: NH4/(NH4+H)
      REAL Y         ! sulfate/anion mole fraction:  SO4/(SO4+NO3)
      
C *** intermediate variables used in CRH equations

      REAL X2, XY, Y2, X2Y, XY2, RDEN

      REAL CRH       ! crystallization RH (fractional units)

C.......................................................................

c *** Experimental measurements of CRH are lacking below 1% relative
c     humidity.  Under those very dry conditions, we assume that 
c     particles will crystallize.  Equations by Martin et al (2003) for
c     internally-mixed sulfate-nitrate-ammonium particles yield maximum
c     CRH values of 35.03% and 34.50% for initial crystal formation and
c     complete crystallization, respectively.  Therefore, the full CRH 
c     calculation can be avoided when RH > 35.1%.

      IF ( RH .LE. 0.01 ) THEN
         CRHB = .TRUE.    ! ambient particles are dry
         RETURN
      ELSEIF ( RH .GT. 0.351 ) THEN
         CRHB = .FALSE.   ! ambient RH exceeds CRH
         RETURN
      END IF

c *** calculate total particle-phase composition [micromoles/m3]

      NNO3 = ( CBLK( VNO3AJ ) + CBLK( VNO3AI ) ) / MWNO3
      NSO4 = ( CBLK( VSO4AJ ) + CBLK( VSO4AI ) ) / MWSO4
      NNH4 = ( CBLK( VNH4AJ ) + CBLK( VNH4AI ) ) / MWNH4

c *** calculate total anion and cation concentrations

      NCAT = MAX( NNH4, 2.0*NSO4 + NNO3 )
      NANI = NNO3 + NSO4
      
c *** calculate ammonium and sulfate mole fractions

      X = NNH4 / NCAT
      Y = NSO4 / NANI

c *** Experimental data of Martin et al. (2003) show no crystal
c     formation when X < 0.50 or Y < 0.22.  For these particle
c     compositions, the full CRH calculation can be avoided.  
c
c     Note: Martin's equation for initial crystal formation returns
c     very large CRH values when X and Y approach zero.  However,
c     those values were verified to be erroneous by personal 
c     communication with Dr. Scot Martin on Aug. 30, 2007.

      IF ( ( X .LT. 0.50 ) .OR. ( Y .LT. 0.22 ) ) THEN
         CRHB = .FALSE.   ! ambient RH exceeds CRH
         RETURN
      END IF
      
c *** store some terms needed to evaluate the CRH equations

      X2   = X * X
      XY   = X * Y
      X2Y  = X2 * Y
      Y2   = Y * Y
      XY2  = X * Y2
      RDEN = 1.0 / ( 25.0 + ( X - 0.7 ) * ( Y - 0.5 ) )

c *** calculate CRH using empirical equations of Martin et al (2003)

      IF (COMPLETE) THEN
         
         CRH = 3143.44 + (63.07 * X) + (0.114 * X2) + (87.97 * Y)
     &         - (125.73 * XY) + (0.586 * X2Y) + (0.95 * Y2)
     &         - (1.384 * XY2) - (79692.5 * RDEN)
         
      ELSE
         
         CRH = -697.908 - (15.351 * X) + (0.43 * X2) - (22.11 * Y)
     &         + (33.882 * XY) - (1.818 * X2Y) + (0.772 * Y2)
     &         - (1.636 * XY2) + (17707.6 * RDEN)
      
      END IF

c *** set value of the output variable, CRHB

      IF ( RH .LE. CRH ) THEN
         CRHB = .TRUE.    ! ambient particles are dry
      ELSE
         CRHB = .FALSE.   ! ambient RH exceeds CRH
      END IF
      
      RETURN

      END


c //////////////////////////////////////////////////////////////////////
c  FUNCTION IRHX determines whether the ambient RH has exceeded the RH of
c    ice formation, based on the Goff-Gratch equations as given by List
c    (1984).
c
c  REFERENCES:
c   1. Goff, J.A. and S. Gratch, Low-pressure properties of water from
c      -160 to 212 F, in Transactions of the American Society of Heating
c      and Ventilating Engineers, pp 95-122, New York, 1946.
c
c   2. List, R.J. (editor), Smithsonian Meteorological Tables, 5th ed.
c      pp. 350, 1984.
c
c  REVISION HISTORY:
c   PVB 11/06/07 Coded the first version.


      LOGICAL FUNCTION IRHX( TEMP, RH )

      IMPLICIT NONE

C *** ARGUMENTS

      REAL, INTENT( IN ) ::  TEMP        ! Air temperature [ K ]
      REAL, INTENT( IN ) ::  RH          ! Fractional relative humidity

C *** PARAMETERS

C *** The following values are taken from List (1984).  Note that
C     these differ slightly from the original equations published by
C     Goff & Gratch (1946).  We also note that T0 and PST differ 
C     slightly from STDTEMP and STDATMPA in the AERO_INFO module.
C     Here, we use 273.16 K and 1013.246 hPa to be consistent with
C     the Goff-Gratch equations as given by List (1984).

      REAL, PARAMETER :: TST = 373.16    ! steam-point temperature, K
      REAL, PARAMETER :: T0  = 273.16    ! ice-point temperature, K
      REAL, PARAMETER :: PST = 1013.246  ! sat vapor pres at TST, hPa
      REAL, PARAMETER :: P0  = 6.1071    ! sat vapor pres at T0, hPa

      REAL, PARAMETER :: LOGPST = 3.0057149     ! LOG10(PST)
      REAL, PARAMETER :: LOGP0  = 0.78583503    ! LOG10(P0)

C *** LOCAL VARIABLES

C *** estimates of IRH using a polynomial approximation

      REAL      EIRH   ! IRH approximated using 2nd order polynomial
      REAL      LIRH   ! lower-bound of IRH
      REAL      UIRH   ! upper-bound of IRH
      
C *** variables used to compute RH of ice formation

      REAL      TSDT, TDTS, T0DT, TDT0  ! intermediate variables
      REAL      LOGPW  ! log10 of saturation vapor pressure over H2O
      REAL      LOGPI  ! log10 of saturation vapor pressure over ice

      REAL      IRH    ! fractional RH at which ice forms

C.......................................................................


      IF ( TEMP .LT. T0 ) THEN

c *** To mitigate the computational expense associated with Goff-Gratch
c     equations, use a 2nd order polynomial function to approximate IRH.
c     This approximation, EIRH, matches IRH from the full Goff-Gratch
c     equations within 0.004 over the entire low-temperature range of 
c     interest (200 to 275K) and is used for screening purposes.

         EIRH = 1.61299 + TEMP * ( 4.4117437E-5 * TEMP - 1.4293888E-2 )
         LIRH = EIRH - 0.005
         UIRH = EIRH + 0.005

         IF ( RH .GT. UIRH ) THEN
            IRHX = .TRUE.
         ELSEIF ( RH .LT. LIRH ) THEN
            IRHX = .FALSE.
         ELSE

c *** Compute IRH using Goff-Gratch equations as given by List (1984)

            TSDT  = TST/TEMP
            TDTS  = TEMP/TST
            T0DT  = T0/TEMP
            TDT0  = TEMP/T0
            LOGPW =  -7.90298 * (TSDT - 1.0)
     &              + 5.02808 * LOG10(TSDT)
     &              - 1.3816E-7 * (10.0 ** (11.344 * (1.0 - TDTS)) -1.0)
     &              + 8.1328E-3 * (10.0 ** (-3.49149*(TSDT - 1.0)) -1.0)
     &              + LOGPST
            LOGPI =  -9.09718 * (T0DT - 1.0)
     &              - 3.56654 * LOG10(T0DT)
     &              + .876793 * (1.0 - TDT0) 
     &              + LOGP0
            IRH   = 10.0 ** (LOGPI - LOGPW)
                    
            IF ( RH .GT. IRH ) THEN
               IRHX = .TRUE.
            ELSE    
               IRHX = .FALSE.
            END IF

         END IF
      ELSE
         IRHX = .FALSE.
      END IF
      
      RETURN

      END
