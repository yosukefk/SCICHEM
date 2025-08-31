!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
SUBROUTINE RFFTI( N,WSAVE )
!     ******************************************************************
!
!     SUBROUTINE RFFTI(N,WSAVE)
!
!     ****************************************************************
!
!  changed 6/9/89 to remove actual work space from WSAVE for multiprocessing
!
!
!     SUBROUTINE RFFTI INITIALIZES THE ARRAY WSAVE WHICH IS USED IN
!     BOTH RFFTF AND RFFTB. THE PRIME FACTORIZATION OF N TOGETHER WITH
!     A TABULATION OF THE TRIGONOMETRIC FUNCTIONS ARE COMPUTED AND
!     STORED IN WSAVE.
!
!     INPUT PARAMETER
!
!     N       THE LENGTH OF THE SEQUENCE TO BE TRANSFORMED.
!
!     OUTPUT PARAMETER
!
!     WSAVE   A WORK ARRAY WHICH MUST BE DIMENSIONED AT LEAST 2*N+15. - old
!     WSAVE   A WORK ARRAY WHICH MUST BE DIMENSIONED AT LEAST N+15. - new
!             THE SAME WORK ARRAY CAN BE USED FOR BOTH RFFTF AND RFFTB
!             AS LONG AS N REMAINS UNCHANGED. DIFFERENT WSAVE ARRAYS
!             ARE REQUIRED FOR DIFFERENT VALUES OF N. THE CONTENTS OF
!             WSAVE MUST NOT BE CHANGED BETWEEN CALLS OF RFFTF OR RFFTB.
!
!     ******************************************************************
IMPLICIT NONE

INTEGER,               INTENT( IN    ) :: N
REAL, DIMENSION(N+15), INTENT( INOUT ) :: WSAVE

INTEGER, DIMENSION(15) :: IFAC

IF( N == 1 )RETURN

IFAC = 0
CALL rffti1( N,WSAVE,IFAC )

WSAVE(N+1:N+15) = TRANSFER(IFAC,WSAVE(N+1:N+15))

RETURN
END
