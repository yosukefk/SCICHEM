MODULE contri_inc

!-----------------------------------------------------------------------

!IMPLICIT LOGICAL (l)
!IMPLICIT CHARACTER*80 (c)
IMPLICIT NONE
SAVE

INTEGER, PARAMETER :: MAXG=30000, MAXCNT=40, MAXFUN=10

!-----------------------------------------------------------------------

INTEGER, PARAMETER :: N_REAL = 74
REAL                       :: real_start
REAL, DIMENSION(0:N_REAL)  :: rarry, rdef
EQUIVALENCE (real_start,rarry(0))

!-----------------------------------------------------------------------

INTEGER, PARAMETER  :: N_INT = 13
INTEGER                     :: int_start
INTEGER, DIMENSION(0:N_INT) ::  iarry,idef
EQUIVALENCE (int_start,iarry(0))

!-----------------------------------------------------------------------

INTEGER, PARAMETER  :: N_LOG = 32
LOGICAL                     :: log_start
LOGICAL, DIMENSION(0:N_LOG) :: larry, ldef
EQUIVALENCE (log_start,larry(0))

!-----------------------------------------------------------------------

INTEGER, PARAMETER  :: N_CHAR = 15
CHARACTER*4 fvar
CHARACTER*80                      :: char_start
CHARACTER*80, DIMENSION(0:N_CHAR) :: carry, cdef
EQUIVALENCE (char_start,carry(0))

!-----------------------------------------------------------------------

TYPE cell_str
  sequence
        INTEGER id
        REAL    x, y, hx, hy
        REAL    d, drt, drb, dlt, dlb
        REAL    f, frt, frb, flt, flb
END TYPE cell_str

INTEGER, DIMENSION(MAXG) :: irg
REAL, DIMENSION(MAXG)    :: fcc, frt, frb, flt, flb
REAL, DIMENSION(MAXG)    :: dcc, drt, drb, dlt, dlb

INTEGER :: m0, n0, nrx, nry, nrxm, nrym
INTEGER :: nrf, nrfm, ncell
INTEGER :: ivar
REAL    :: x0, y0, xmin, ymin, xmax, ymax
REAL    :: dxsrf, dysrf, rfx, rfy
REAL    :: pi

LOGICAL :: laux, lrfx, lrfy, lrfxy

!-----------------------------------------------------------------------
END MODULE contri_inc
