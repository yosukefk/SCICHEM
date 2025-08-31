!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
MODULE convert_fd
!==== SCIP conversion factors

  REAL, PARAMETER :: HCF_HOUR2SEC = 3600.
  REAL, PARAMETER :: HCF_SEC2HOUR = 1./HCF_HOUR2SEC

  REAL, PARAMETER :: HCF_KM2M = 1000.
  REAL, PARAMETER :: HCF_M2KM = 1./HCF_KM2M

  REAL, PARAMETER :: HCF_M2MICRON = 1.e+6
  REAL, PARAMETER :: HCF_MICRON2M = 1./HCF_M2MICRON

END MODULE convert_fd
