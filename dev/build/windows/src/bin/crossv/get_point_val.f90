SUBROUTINE get_point_val(xpnt,ypnt,dpnt,fpnt)
USE contri_inc
IMPLICIT NONE

INTEGER             :: i, ii, iii, ix, iy, ipt
REAL,PARAMETER      :: eps = 1.0e-6
REAL, DIMENSION(12) :: ac
REAL                :: xpnt, ypnt, dpnt, fpnt, xp, yp
REAL                :: x, y, angle, aref

TYPE ( cell_str ) p0,p(12)

pi   = 4.*atan(1.)

IF ((xpnt < xmin) .or. (ypnt < ymin)) THEN
  WRITE(6,*) 'x = ',xpnt,'xmin = ',xmin
  WRITE(6,*) 'y = ',ypnt,'ymin = ',ymin
  WRITE(6,*)'Error : point outside of domain'
  STOP
END IF

xmax = xmin + float(m0)*dxsrf
ymax = ymin + float(n0)*dysrf

IF ((xpnt > xmax) .or. (ypnt > ymax)) THEN
  WRITE(6,*) 'x = ',xpnt,'xmax = ',xmax
  WRITE(6,*) 'y = ',ypnt,'ymax = ',ymax
  WRITE(6,*)'Error : point outside of domain'
  STOP
END IF

xp = (xpnt-xmin)/dxsrf
yp = (ypnt-ymin)/dysrf

IF (xpnt == xmax) xp = xp - eps
IF (ypnt == ymax) yp = yp - eps

xmax = float(m0) - eps
ymax = float(n0) - eps

!-----  Find the top level cell that contains the point

p0%x  = xp
p0%y  = yp

ix    = min0(int(p0%x)+1,m0)
iy    = min0(int(p0%y)+1,n0)

x0 = float(ix) - 0.5
y0 = float(iy) - 0.5

p0%id  = (iy-1)*m0 + ix
p0%hx  = 1.0
p0%hy  = 1.0
p0%d   = dcc(p0%id)
p0%drt = drt(p0%id)
p0%dlt = dlt(p0%id)
p0%drb = drb(p0%id)
p0%dlb = dlb(p0%id)
IF (laux) THEN
  p0%f   = fcc(p0%id)
  p0%frt = frt(p0%id)
  p0%flt = flt(p0%id)
  p0%frb = frb(p0%id)
  p0%flb = flb(p0%id)
END IF

!-----  Find the bottom level cell that contains the point

IF (lrfxy) THEN
  CALL sum_point_val_xy(p0,x0,y0)
ELSE IF (lrfx) THEN
  CALL sum_point_val_x(p0,x0,y0)
ELSE
  CALL sum_point_val_y(p0,x0,y0)
END IF

xp = xp - x0
yp = yp - y0

!-----  Find the point coordinates referenced to the cell's center

x  = p0%x - int(p0%x)
y  = p0%y - int(p0%y)

x  = x - 0.5
y  = y - 0.5

IF (x == 0.0 .and. y == 0.0) THEN

!-------  IF the point is at the center of the cell, RETURN the cell's value

  dpnt = p0%d
  IF (laux) fpnt = p0%f

ELSE IF (lrfxy) THEN

!-------  Find location of neighboring cells

  CALL set_cell_locations(x0,y0,p0%hx,p0%hy,p)

!-------  Find angle of point

  CALL find_angle(x,y,angle,0.0)

!-------  Start search based on the quadrant of the point within the cell

  IF (angle >= 0.0 .and. angle < 0.5*pi) THEN
    ipt = 10
  ELSE IF (angle >= 0.5*pi .and. angle < pi) THEN
    ipt = 1
  ELSE IF (angle >= pi .and. angle < 1.5*pi) THEN
    ipt = 4
  ELSE
    ipt = 7
  END IF

!-------  Find reference cell and angle

  CALL find_refcell(p(ipt),ac(ipt),0.0)
  aref    = ac(ipt)
  ac(ipt) = 0.0

!-------  Find new angle of point with respect to the reference angle

  CALL find_angle(x,y,angle,aref)

!-------  Find values and angles of neighboring cells

  DO i = 2,11
    ii = mod(ipt+i-2,12) + 1
    CALL find_refcell(p(ii),ac(ii),aref)
  END DO

!-------  Search for cells needed to enclose the point (triangulate)

  DO i = 1,10
    ii  = mod(ipt+i-2,12) + 1
    iii = mod(ipt+i-1,12) + 1
    IF (angle >= ac(ii) .and. angle < ac(iii)) THEN
      CALL find_value(xp,yp,p0,p(ii),p(iii),dpnt,fpnt)
      GOTO 10
    END IF
  END DO

!-------  IF angle is not found, THEN the neighboring cell is outside boundary

  ii = mod(ipt-1,12) + 1
  CALL find_value(xp,yp,p0,p(ii),p(ii),dpnt,fpnt)

10        continue

ELSE

!------- Temporary fix for vertical slices

  dpnt = p0%d
  IF (laux) fpnt = p0%f

END IF

RETURN

END

!-------------------------------------------------------------------------------

RECURSIVE SUBROUTINE sum_point_val_xy(p,xc,yc)
USE contri_inc
IMPLICIT NONE

INTEGER         :: ix, iy, ipt
REAL            :: xc, yc, xlb, xrt, xlt, xrb
REAL            :: del, dcx, f1, f2
REAL            :: fcx
TYPE ( cell_str ) p


!-----  Finds the value and cell location of the point


IF (irg(p%id) /= 0) THEN

  p%x  = p%x - int(p%x)
  p%y  = p%y - int(p%y)

  p%x  = p%x + p%x
  p%y  = p%y + p%y

  p%hx = 0.5*p%hx
  p%hy = 0.5*p%hy

  ix     = int(p%x)
  iy     = int(p%y)
  ipt    = iy + iy + ix
  p%id   = irg(p%id) + ipt

  xc = xc + (float(ix) - 0.5)*p%hx
  yc = yc + (float(iy) - 0.5)*p%hy

  IF (p%d > 0.0) THEN
    IF (ipt == 0) THEN
      xlb  = 0.5*p%dlb
      xrt  = -xlb
      xlt  = 0.5*p%dlt
      xrb  = 0.5*p%drb
      del  = exp(xlb)
    elseIF (ipt == 1) THEN
      xrb = 0.5*p%drb
      xlt = -xrb
      xrt = 0.5*p%drt
      xlb = 0.5*p%dlb
      del = exp(xrb)
    elseIF (ipt == 2) THEN
      xlt = 0.5*p%dlt
      xrb = -xlt
      xrt = 0.5*p%drt
      xlb = 0.5*p%dlb
      del = exp(xlt)
    elseIF (ipt == 3) THEN
      xrt = 0.5*p%drt
      xlb = -xrt
      xlt = 0.5*p%dlt
      xrb = 0.5*p%drb
      del = exp(xrt)
    END IF
    dcx = p%d*del
    p%d = dcx + dcc(p%id)
    f1  = dcx/p%d
    f2  = 1.-f1
  ELSE
    xrt = 0.0
    xlb = 0.0
    xlt = 0.0
    xrb = 0.0
    p%d = dcc(p%id)
    f1  = 0.0
    f2  = 1.0
  END IF

  p%drt = xrt*f1 + f2*drt(p%id)
  p%drb = xrb*f1 + f2*drb(p%id)
  p%dlt = xlt*f1 + f2*dlt(p%id)
  p%dlb = xlb*f1 + f2*dlb(p%id)

  IF (laux) THEN
    IF (p%f > 0.0) THEN
      IF (ipt == 0) THEN
        xlb = 0.5*p%flb
        xrt = -xlb
        xlt = 0.5*p%flt
        xrb = 0.5*p%frb
        del = exp(xlb)
      elseIF (ipt == 1) THEN
        xrb = 0.5*p%frb
        xlt = -xrb
        xrt = 0.5*p%frt
        xlb = 0.5*p%flb
        del = exp(xrb)
      elseIF (ipt == 2) THEN
        xlt = 0.5*p%flt
        xrb = -xlt
        xrt = 0.5*p%frt
        xlb = 0.5*p%flb
        del = exp(xlt)
      elseIF (ipt == 3) THEN
        xrt = 0.5*p%frt
        xlb = -xrt
        xlt = 0.5*p%flt
        xrb = 0.5*p%frb
        del = exp(xrt)
      END IF
      fcx = p%f*del
      p%f = fcx + fcc(p%id)
      f1  = fcx/p%f
      f2  = 1.-f1
    ELSE
      xrt = 0.0
      xlb = 0.0
      xlt = 0.0
      xrb = 0.0
      p%f = fcc(p%id)
      f1  = 0.0
      f2  = 1.0
    END IF

    p%frt = xrt*f1 + f2*frt(p%id)
    p%frb = xrb*f1 + f2*frb(p%id)
    p%flt = xlt*f1 + f2*flt(p%id)
    p%flb = xlb*f1 + f2*flb(p%id)

  END IF

  CALL sum_point_val_xy(p,xc,yc)

END IF

RETURN

END

!-------------------------------------------------------------------------------

RECURSIVE SUBROUTINE sum_point_val_x(p,xc,yc)
USE contri_inc
IMPLICIT NONE

INTEGER         :: ix
REAL            :: xc, yc, xlt, xrt, del, dcx
REAL            :: f1, f2, fcx
TYPE ( cell_str ) p

!-----  Finds the value and cell location of the point

IF (irg(p%id) /= 0) THEN

  p%x  = p%x - int(p%x)

  p%x  = p%x + p%x

  p%hx = rfx*p%hx

  ix     = int(p%x)
  p%id   = irg(p%id) + ix

  xc = xc + (float(ix) - 0.5)*p%hx

  IF (p%d > 0.0) THEN
    IF (ix == 0) THEN
      xlt  = 0.5*p%dlt
      xrt  = -xlt
      del  = exp(xlt)
    ELSE
      xrt = 0.5*p%drt
      xlt = -xrt
      del = exp(xrt)
    END IF
    dcx = p%d*del
    p%d = dcx + dcc(p%id)
    f1  = dcx/p%d
    f2  = 1.-f1
  ELSE
    xrt = 0.0
    xlt = 0.0
    p%d = dcc(p%id)
    f1  = 0.0
    f2  = 1.0
  END IF

  p%drt = xrt*f1 + f2*drt(p%id)
  p%dlt = xlt*f1 + f2*dlt(p%id)

  IF (laux) THEN
    IF (p%f > 0.0) THEN
      IF (ix == 0) THEN
        xlt = 0.5*p%flt
        xrt = -xlt
        del = exp(xlt)
      ELSE
        xrt = 0.5*p%frt
        xlt = -xrt
        del = exp(xrt)
      END IF
      fcx = p%f*del
      p%f = fcx + fcc(p%id)
      f1  = fcx/p%f
      f2  = 1.-f1
    ELSE
      xrt = 0.0
      xlt = 0.0
      p%f = fcc(p%id)
      f1  = 0.0
      f2  = 1.0
    END IF

    p%frt = xrt*f1 + f2*frt(p%id)
    p%flt = xlt*f1 + f2*flt(p%id)

  END IF

  CALL sum_point_val_x(p,xc,yc)

END IF

RETURN

END

!-------------------------------------------------------------------------------

SUBROUTINE sum_point_val_y(p,xc,yc)
USE contri_inc
IMPLICIT NONE

REAL             :: xc, yc
TYPE ( cell_str ) p

!-----  Finds the value and cell location of the point

WRITE(*,*)'Sum_point_val_y not written yet!'
STOP

END

!-----------------------------------------------------------------------

SUBROUTINE find_refcell(p,angle,aref)
USE contri_inc
IMPLICIT NONE

INTEGER         :: ix, iy
REAL            :: angle, aref
REAL            :: x, y

TYPE ( cell_str ) p

!-----  Finds neighboring cells and their angles

p%x = amin1(p%x,xmax)
p%x = amax1(p%x,0.0)
p%y = amin1(p%y,ymax)
p%y = amax1(p%y,0.0)

ix    = min0(int(p%x)+1,m0)
iy    = min0(int(p%y)+1,n0)

x = float(ix) - 0.5
y = float(iy) - 0.5

p%id  = (iy-1)*m0 + ix

p%hx  = 1.0
p%hy  = 1.0
p%d   = dcc(p%id)
p%drt = drt(p%id)
p%dlt = dlt(p%id)
p%drb = drb(p%id)
p%dlb = dlb(p%id)
IF (laux) THEN
  p%f   = fcc(p%id)
  p%frt = frt(p%id)
  p%flt = flt(p%id)
  p%frb = frb(p%id)
  p%flb = flb(p%id)
END IF

CALL sum_point_val_xy(p,x,y)

x = x - x0
y = y - y0

p%x = x
p%y = y

CALL find_angle(x,y,angle,aref)

RETURN
END

!-----------------------------------------------------------------------

SUBROUTINE find_value(x,y,p0,p1,p2,dpnt,fpnt)
USE contri_inc
IMPLICIT NONE

INTEGER          :: id0, id1, id2
REAL             :: x, y, dpnt, fpnt, ff0, ff1, ff2
REAL             :: f1, f2, r1, r2
REAL             :: dd0, dd1, dd2, d1, d2
TYPE ( cell_str ) p0, p1, p2

!-----  Performs the triangular interpolation

id0 = p0%id
id1 = p1%id
id2 = p2%id

dd0 = amax1(p0%d,1.e-30)
dd1 = amax1(p1%d,1.e-30)
dd2 = amax1(p2%d,1.e-30)
d1  = alog(dd1/dd0)
d2  = alog(dd2/dd0)
IF (laux) THEN
  ff0 = amax1(p0%f,1.e-30)
  ff1 = amax1(p1%f,1.e-30)
  ff2 = amax1(p2%f,1.e-30)
  f1  = alog(ff1/ff0)
  f2  = alog(ff2/ff0)
END IF

IF (id0 == id1 .or. id0 == id2 .or. id1 == id2) THEN
  dpnt = dd0
  IF (laux) fpnt = ff0
ELSE
  r1   = (p2%y*d1-p1%y*d2)/(p1%x*p2%y-p2%x*p1%y)
  r2   = (p1%x*d2-p2%x*d1)/(p1%x*p2%y-p2%x*p1%y)
  dpnt = dd0*exp(r1*x + r2*y)
  IF (laux) THEN
    r1   = (p2%y*f1-p1%y*f2)/(p1%x*p2%y-p2%x*p1%y)
    r2   = (p1%x*f2-p2%x*f1)/(p1%x*p2%y-p2%x*p1%y)
    fpnt = ff0*exp(r1*x + r2*y)
  END IF
END IF

RETURN
END

!-----------------------------------------------------------------------

SUBROUTINE find_angle(x,y,angle,rang)
USE contri_inc
IMPLICIT NONE

REAL   :: x, y, angle, rang

!-----  Calculates an angle based on a reference angle (rang)

IF (x == 0.0 .and. y == 0.0) THEN
  angle = 0.
ELSE
  angle = atan2(y,x)
  IF (angle < 0.0) angle = angle + 2.0*pi
  angle = angle - rang
  IF (angle < 0.0) angle = angle + 2.0*pi
END IF

RETURN
END

!-----------------------------------------------------------------------

SUBROUTINE set_cell_locations(x,y,hx,hy,p)
USE contri_inc
IMPLICIT NONE

REAL, PARAMETER :: eps = 1.0e-6
REAL            :: x, y, hx, hy, xmm, xmp, xpm, xpp
REAL            :: ymm, ymp, ypm, ypp
TYPE ( cell_str ) p(12)

!-----  Find location of neighboring cells

xmm = x - 0.5*hx - eps
xmp = x - 0.5*hx + eps
xpm = x + 0.5*hx - eps
xpp = x + 0.5*hx + eps
ymm = y - 0.5*hy - eps
ymp = y - 0.5*hy + eps
ypm = y + 0.5*hy - eps
ypp = y + 0.5*hy + eps

!-----  First point is right-bottom cell

p(1)%x  = xpp
p(1)%y  = ymm
p(2)%x  = xpp
p(2)%y  = ymp
p(3)%x  = xpp
p(3)%y  = ypm
p(4)%x  = xpp
p(4)%y  = ypp
p(5)%x  = xpm
p(5)%y  = ypp
p(6)%x  = xmp
p(6)%y  = ypp
p(7)%x  = xmm
p(7)%y  = ypp
p(8)%x  = xmm
p(8)%y  = ypm
p(9)%x  = xmm
p(9)%y  = ymp
p(10)%x = xmm
p(10)%y = ymm
p(11)%x = xmp
p(11)%y = ymm
p(12)%x = xpm
p(12)%y = ymm

RETURN
END
