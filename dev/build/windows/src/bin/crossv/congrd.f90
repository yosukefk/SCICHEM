SUBROUTINE  set_grad_xy
USE contri_inc
IMPLICIT NONE

INTEGER       :: ix, iy, id

TYPE ( cell_str ) p1, pr, pt, pl, pb, prt, prb, plt, plb

DO ix = 1,m0
  DO iy = 1,n0

    id = (iy-1)*m0 + ix

    p1%id = id

    IF (ix < m0) THEN
      IF (iy < n0) THEN
        prt%id = id + m0 + 1
      ELSE
        prt%id = 0
      END IF
      IF (iy > 1) THEN
        prb%id = id - m0 + 1
      ELSE
        prb%id = 0
      END IF
      pr%id = id + 1
    ELSE
      pr%id = 0
      prt%id = 0
      prb%id = 0
    END IF

    IF (iy < n0) THEN
      pt%id = id + m0
    ELSE
      pt%id = 0
    END IF

    IF (ix > 1) THEN
      IF (iy < n0) THEN
        plt%id = id + m0 - 1
      ELSE
        plt%id = 0
      END IF
      IF (iy > 1) THEN
        plb%id = id - m0 - 1
      ELSE
        plb%id = 0
      END IF
      pl%id = id - 1
    ELSE
      pl%id  = 0
      plt%id = 0
      plb%id = 0
    END IF

    IF (iy > 1) THEN
      pb%id = id - m0
    ELSE
      pb%id = 0
    END IF

    call grad_xy( p1, pr, pl, pt, pb, prt, prb, plt, plb)

  END DO
END DO

RETURN

END

!-----------------------------------------------------------------------

RECURSIVE SUBROUTINE  grad_xy( p, pr, pl, pt, pb, prt, prb, plt, plb)
USE contri_inc
IMPLICIT NONE

REAL          :: xc, xr, xl, xt, xb, xrt, xlt
REAL          :: xrb, xlb

REAL, EXTERNAL :: getf, getc

TYPE ( cell_str ) p , pr, pt, pl, pb, prt, prb, plt, plb
TYPE ( cell_str ) q , qr, qt, ql, qb, qrt, qrb, qlt, qlb

IF (dcc(p%id) /= 0.0) THEN
  xc  = getc(p%id,0.0)
  xr  = getc(pr%id,xc)
  xl  = getc(pl%id,xc)
  xt  = getc(pt%id,xc)
  xb  = getc(pb%id,xc)
  IF (pt%id == 0) THEN
    xrt = getc(prt%id,xr)
    xlt = getc(plt%id,xl)
  ELSE
    xrt = getc(prt%id,xt)
    xlt = getc(plt%id,xt)
  END IF
  IF (pb%id == 0) THEN
    xrb = getc(prb%id,xr)
    xlb = getc(plb%id,xl)
  ELSE
    xrb = getc(prb%id,xb)
    xlb = getc(plb%id,xb)
  END IF
!         drt(p%id) = 0.25*(xr+xt+xrt+xc) - xc
!         drb(p%id) = 0.25*(xr+xb+xrb+xc) - xc
!         dlt(p%id) = 0.25*(xl+xt+xlt+xc) - xc
!         dlb(p%id) = 0.25*(xl+xb+xlb+xc) - xc
  drt(p%id) = alog(0.25*(xr+xt+xrt+xc)/xc)
  drb(p%id) = alog(0.25*(xr+xb+xrb+xc)/xc)
  dlt(p%id) = alog(0.25*(xl+xt+xlt+xc)/xc)
  dlb(p%id) = alog(0.25*(xl+xb+xlb+xc)/xc)
ELSE
  drt(p%id) = 0.0
  drb(p%id) = 0.0
  dlt(p%id) = 0.0
  dlb(p%id) = 0.0
END IF

IF (laux .and. fcc(p%id) /= 0.0) THEN
  xc = getf(p%id,0.0)
  xr = getf(pr%id,xc)
  xl = getf(pl%id,xc)
  xt = getf(pt%id,xc)
  xb = getf(pb%id,xc)
  IF (pt%id == 0) THEN
    xrt = getf(prt%id,xr)
    xlt = getf(plt%id,xl)
  ELSE
    xrt = getf(prt%id,xt)
    xlt = getf(plt%id,xt)
  END IF
  IF (pb%id == 0) THEN
    xrb = getf(prb%id,xr)
    xlb = getf(plb%id,xl)
  ELSE
    xrb = getf(prb%id,xb)
    xlb = getf(plb%id,xb)
  END IF
!         frt(p%id) = 0.25*(xr+xt+xrt+xc) - xc
!         frb(p%id) = 0.25*(xr+xb+xrb+xc) - xc
!         flt(p%id) = 0.25*(xl+xt+xlt+xc) - xc
!         flb(p%id) = 0.25*(xl+xb+xlb+xc) - xc
  frt(p%id) = alog(0.25*(xr+xt+xrt+xc)/xc)
  frb(p%id) = alog(0.25*(xr+xb+xrb+xc)/xc)
  flt(p%id) = alog(0.25*(xl+xt+xlt+xc)/xc)
  flb(p%id) = alog(0.25*(xl+xb+xlb+xc)/xc)
ELSE
  frt(p%id) = 0.0
  frb(p%id) = 0.0
  flt(p%id) = 0.0
  flb(p%id) = 0.0
END IF

IF (irg(p%id) > 0) THEN
  call get_id( p  , 0 , q  )
  call get_id( p  , 1 , qr )
  call get_id( p  , 2 , qt )
  call get_id( pl , 1 , ql )
  call get_id( pb , 2 , qb )
  call get_id( p  , 3 , qrt )
  call get_id( pb , 3 , qrb )
  call get_id( pl , 3 , qlt )
  call get_id( plb, 3 , qlb )

  call grad_xy( q, qr, ql, qt, qb, qrt, qrb, qlt, qlb)

  call get_id( p  , 1 , q  )
  call get_id( pr , 0 , qr )
  call get_id( p  , 3 , qt )
  call get_id( p  , 0 , ql )
  call get_id( pb , 3 , qb )
  call get_id( pr , 2 , qrt )
  call get_id( prb, 2 , qrb )
  call get_id( p  , 2 , qlt )
  call get_id( pb , 2 , qlb )

  call grad_xy( q, qr, ql, qt, qb, qrt, qrb, qlt, qlb)

  call get_id( p  , 2 , q  )
  call get_id( p  , 3 , qr )
  call get_id( pt , 0 , qt )
  call get_id( pl , 3 , ql )
  call get_id( p  , 0 , qb )
  call get_id( pt , 1 , qrt )
  call get_id( p  , 1 , qrb )
  call get_id( plt, 1 , qlt )
  call get_id( pl , 1 , qlb )

  call grad_xy( q, qr, ql, qt, qb, qrt, qrb, qlt, qlb)

  call get_id( p  , 3 , q  )
  call get_id( pr , 2 , qr )
  call get_id( pt , 1 , qt )
  call get_id( p  , 2 , ql )
  call get_id( p  , 1 , qb )
  call get_id( prt, 0 , qrt )
  call get_id( pr , 0 , qrb )
  call get_id( pt , 0 , qlt )
  call get_id( p  , 0 , qlb )

  call grad_xy( q, qr, ql, qt, qb, qrt, qrb, qlt, qlb)
END IF

RETURN
END

!-----------------------------------------------------------------------

SUBROUTINE  set_grad_x
USE contri_inc
IMPLICIT NONE

INTEGER :: ix, iy, id
TYPE ( cell_str ) p1, pr, pl

DO ix = 1,m0
  DO iy = 1,n0

    id = (iy-1)*m0 + ix

    p1%id = id

    IF (ix < m0) THEN
      pr%id = id + 1
    ELSE
      pr%id = 0
    END IF

    IF (ix > 1) THEN
      pl%id = id - 1
    ELSE
      pl%id  = 0
    END IF

    call grad_x( p1, pr, pl )

  END DO
END DO

RETURN

END

!-----------------------------------------------------------------------

RECURSIVE SUBROUTINE  grad_x( p, pr, pl )
USE contri_inc
IMPLICIT NONE

REAL            :: xc, xr, xl
REAL, EXTERNAL  :: getc, getf

TYPE ( cell_str ) p , pr, pl
TYPE ( cell_str ) q , qr, ql

IF (irg(p%id) > 0) THEN

  IF (dcc(p%id) /= 0.0) THEN
    xc = getc(p%id,0.0)
    xr = getc(pr%id,xc)
    drt(p%id) = alog(0.5*(xr+xc)/xc)
    xl = getc(pl%id,xc)
    dlt(p%id) = alog(0.5*(xl+xc)/xc)
  ELSE
    drt(p%id) = 0.0
    dlt(p%id) = 0.0
  END IF

  IF (laux .and. fcc(p%id) /= 0.0) THEN
    xc = getf(p%id,0.0)
    xr = getf(pr%id,xc)
    frt(p%id) = alog(0.5*(xr+xc)/xc)
    xl = getf(pl%id,xc)
    flt(p%id) = alog(0.5*(xl+xc)/xc)
  ELSE
    frt(p%id) = 0.0
    flt(p%id) = 0.0
  END IF

  call get_id( p  , 0 , q  )
  call get_id( p  , 1 , qr )
  call get_id( pl , 1 , ql )

  call grad_x( q, qr, ql )

  call get_id( p  , 1 , q  )
  call get_id( pr , 0 , qr )
  call get_id( p  , 0 , ql )

  call grad_x( q, qr, ql )

ELSE

  drt(p%id) = 0.0
  dlt(p%id) = 0.0
  IF(laux)THEN
    frt(p%id) = 0.0
    flt(p%id) = 0.0
  END IF

END IF

RETURN
END

!-----------------------------------------------------------------------

SUBROUTINE  set_grad_y
USE contri_inc
IMPLICIT NONE

INTEGER :: ix, iy, id
TYPE ( cell_str ) p1, pt, pb

DO ix = 1,m0
  DO iy = 1,n0

    id = (iy-1)*m0 + ix

    p1%id = id

    IF (iy < n0) THEN
      pt%id = id + m0
    ELSE
      pt%id = 0
    END IF

    IF (iy > 1) THEN
      pb%id = id - m0
    ELSE
      pb%id = 0
    END IF

    call grad_y( p1, pt, pb )

  END DO
END DO

RETURN

END

!-----------------------------------------------------------------------

RECURSIVE SUBROUTINE  grad_y( p, pt, pb)
USE contri_inc
IMPLICIT NONE

INTEGER :: ix, iy, id
REAL    :: xc, xt, xb

TYPE ( cell_str ) p , pt, pb
TYPE ( cell_str ) q , qt, qb

REAL,EXTERNAL    :: getf, getc


IF (irg(p%id) > 0) THEN

  IF (dcc(p%id) /= 0.0) THEN
    xc = getc(p%id,0.0)
    xt = getc(pt%id,xc)
    xb = getc(pb%id,xc)
    drt(p%id) = alog(0.5*(xt+xc)/xc)
    drb(p%id) = alog(0.5*(xb+xc)/xc)
  ELSE
    drt(p%id) = 0.0
    drb(p%id) = 0.0
  END IF

  IF (laux .and. fcc(p%id) /= 0.0) THEN
    xc = getf(p%id,0.0)
    xt = getf(pt%id,xc)
    xb = getf(pb%id,xc)
    frt(p%id) = alog(0.5*(xt+xc)/xc)
    frb(p%id) = alog(0.5*(xb+xc)/xc)
  ELSE
    frt(p%id) = 0.0
    frb(p%id) = 0.0
  END IF

  call get_id( p  , 0 , q  )
  call get_id( p  , 1 , qt )
  call get_id( pb , 1 , qb )

  call grad_y( q, qt, qb )

  call get_id( p  , 1 , q  )
  call get_id( pt , 0 , qt )
  call get_id( p  , 0 , qb )

  call grad_y( q, qt, qb )

ELSE

  drt(p%id) = 0.0
  drb(p%id) = 0.0
  IF(laux)THEN
    frt(p%id) = 0.0
    frb(p%id) = 0.0
  END IF

END IF

RETURN
END

!-----------------------------------------------------------------------

REAL FUNCTION getc(id,x)
USE contri_inc
IMPLICIT NONE

INTEGER  :: id
REAL     :: x

IF (id == 0) THEN
  getc = x
ELSE
  getc = dcc(id)
END IF

RETURN
END

!-----------------------------------------------------------------------

REAL FUNCTION getf(id,x)
USE contri_inc
IMPLICIT NONE

INTEGER  :: id
REAL     :: x

IF (id == 0) THEN
  getf = x
ELSE
  getf = fcc(id)
END IF

RETURN
END

!-----------------------------------------------------------------------

SUBROUTINE  get_id( p , ipt , q )
USE contri_inc
IMPLICIT NONE

INTEGER :: ipt
TYPE ( cell_str ) p , q

IF(p%id == 0)THEN
  q%id = 0
ELSE
  q%id = irg(p%id) + ipt
END IF

RETURN
END
