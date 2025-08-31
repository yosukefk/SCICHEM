!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
MODULE status_fd

!==== Status array member values

  INTEGER, PARAMETER :: STATUS_INVALID          = 0
  INTEGER, PARAMETER :: STATUS_VALID            = 1
  INTEGER, PARAMETER :: STATUS_COMPLETE         = 1
  INTEGER, PARAMETER :: STATUS_INCOMPLETE       = 2
  INTEGER, PARAMETER :: STATUS_NOT_CUSTOMIZABLE = 2
  INTEGER, PARAMETER :: STATUS_CUSTOMIZED       = 4
  INTEGER, PARAMETER :: STATUS_MODIFIED         = 4
  INTEGER, PARAMETER :: STATUS_EMPTY            = 8
  INTEGER, PARAMETER :: STATUS_STANDARD         = 8

END MODULE status_fd
