MODULE vchk

  SAVE

  INTEGER                 :: mxvgrd
  REAL                    :: szmx
  REAL(8), DIMENSION(3,3) :: rot

END MODULE vchk


SUBROUTINE create_slicev_int(hslice,slice,vext,nres,itys,itye,imc,srf)
!
!     Vertical Slice Routines
!      SUBROUTINE create_slicev  Generate gird data for a vertical slice
!      SUBROUTINE slice_dosv     Add a Puff contribution to the slice
!      SUBROUTINE accum_surfv    Surface cell accumulating routine
!      SUBROUTINE accum_cellv    Surface cell refinement routine
!
!      common%puf         COMMON     - SCIPUFF main common
!      common%srf         COMMON     - SCIPUFF surface common
!      error%inc          COMMON     - Error handling
!      surface%inc        COMMON     - SCIPUFF surface definition
!**** HISTORY **********************************************************
!     23-Jan-95 (SFP) Initial comments and clean up of routines
!***********************************************************************
!               GLOBAL DEFINES
!***********************************************************************
!      GLOBAL DEFINE
!      END
!*******************************************************************************
!             create_slicev
!*******************************************************************************

USE scipuff_fi
USE surface_fi
USE files_fi
USE grdstr
USE vert_mod
USE vchk

!     This routine generates the grid data from the puff file

IMPLICIT NONE

TYPE (grid_str) srf

REAL, DIMENSION(2,2)       ::  slice
REAL, DIMENSION(2,2)       :: hslice
INTEGER, DIMENSION(2)      :: nres
REAL, DIMENSION(2)         :: vext
INTEGER                    :: itys                           !Start PUFF Type
INTEGER                    :: itye                           !End PUFF Type
INTEGER                    :: imc                            !multu-comp index
INTEGER                    :: nxs,nys
INTEGER                    :: nvs,ngrds,i,ivar,ipuf
REAL                       :: xmins,ymins,dxs,dys
REAL                       :: dxv,dyv,zmn,zmx,hfac
REAL                       :: xbar,ybar,xmap,ymap,ang,sn,cs
LOGICAL                    :: lsg

!---- Set Slice endpoints

IF(hslice(1,1) == DEF_VAL_R)THEN
  slice(1,1) = xmin
ELSE
  slice(1,1) = hslice(1,1)
END IF
IF(hslice(2,1) == DEF_VAL_R)THEN
  slice(2,1) = ymin
ELSE
  slice(2,1) = hslice(2,1)
END IF
IF(hslice(1,2) == DEF_VAL_R)THEN
  slice(1,2) = xmin + dxg*FLOAT(nx)
ELSE
  slice(1,2) = hslice(1,2)
END IF
IF(hslice(2,2) == DEF_VAL_R)THEN
  slice(2,2) = ymin + dyg*FLOAT(ny)
ELSE
  slice(2,2) = hslice(2,2)
END IF

!      IF(.not.lgen)RETURN

!---- Set slice vertical extent

IF(vext(1) == DEF_VAL_R)THEN
  zmn = 0.
ELSE
  zmn = vext(1)
END IF
IF(vext(2) == DEF_VAL_R)THEN
  zmx = zMAX
ELSE
  zmx = vext(2)
END IF

!---- Set slice resolution

IF(nres(1) == DEF_VAL_I)THEN
  nhg = nx
ELSE
  nhg = nres(1)
END IF
IF(nres(2) == DEF_VAL_I)THEN
  nvg = 25
ELSE
  nvg = nres(2) + 5
END IF

!---- Set grid parameters

hmin = 0.
vmin = zmn

dhg = 1.
dvg = (zmx-zmn)/FLOAT(nvg)

dxv = (slice(1,2)-slice(1,1))/FLOAT(nhg)

dyv = (slice(2,2)-slice(2,1))/FLOAT(nhg)

hfac = MIN( MAX(FLOAT(nvg-5)/25.,1.) , 4. )

!---- Define rotation

xbar = 0.5*(slice(1,2)+slice(1,1))
ybar = 0.5*(slice(2,2)+slice(2,1))
CALL mapfac( xbar , ybar , xmap , ymap )

ang = ATAN2(dyv/ymap,dxv/xmap)
sn  = SIN(ang)
cs  = COS(ang)

rot(1,1) = DBLE(cs)
rot(1,2) = -DBLE(sn)
rot(1,3) = 0.D0
rot(2,1) = DBLE(sn)
rot(2,2) = DBLE(cs)
rot(2,3) = 0.D0
rot(3,1) = 0.D0
rot(3,2) = 0.D0
rot(3,3) = 1.D0

!---- Initialize adaptive grid

nvs = srf%nvart
ngrds = nhg*nvg

DO i = 1,ngrds
  srfgrd(i,srf%ipgrd) = 0
  DO ivar = 1,nvs
    srfdat(i,ivar+srf%ipdat) = 0.0
  END DO
END DO

srf%ncells = ngrds

lsg = itys == itye

!---- Loop over puffs and Compute slice values

mxvgrd = 0
szmx   = 0.
DO ipuf=1,npuf
  IF(puff(ipuf)%ityp >= itys .and. puff(ipuf)%ityp <= itye)THEN
    CALL slice_dosv_int(lsg,slice,dxv,dyv,puff(ipuf),imc,srf,ipuf,hfac)
    IF(nError /= NO_ERROR)GOTO 9999
  ENDIF
END DO

IF(mxvgrd < 5)THEN
  nError = WN_ERROR
  eRoutine = 'VerticalSlice'
  eMessage = 'Poor vertical slice resolution'
  eInform  = 'Resolution can be improved with the SELECT button'
  eAction  = 'Do you want to continue with the current resolution?'
  !call WarningMessage(0)
  IF(nError /= NO_ERROR)THEN
    eAction = ''
    eInform = 'Plot terminated by User'
    GOTO 9999
  END IF
END IF

!---- Set grid values

nxs   = nhg
nys   = -nvg
xmins = hmin
ymins = vmin
dxs   = dhg
dys   = dvg

9999  RETURN
END

!------------------------------------------------------------------------
SUBROUTINE rotate(p,rot,bsig)
USE scipuff_fi
IMPLICIT NONE

TYPE (puff_str) p
REAL(8), DIMENSION(7) :: bsig
REAL(8), DIMENSION(3,3) :: rot
REAL(8), DIMENSION(7) :: asig

asig(1) = DBLE(p%axx)
asig(2) = DBLE(p%axy)
asig(3) = DBLE(p%axz)
asig(4) = DBLE(p%ayy)
asig(5) = DBLE(p%ayz)
asig(6) = DBLE(p%azz)
CALL matrot(asig,rot,bsig)

RETURN
END
!*******************************************************************************
!             slice_dosv
!*******************************************************************************
SUBROUTINE slice_dosv_int(lsg,sl,dxv,dyv,p,imc,srf,ipuf,hrfac)
USE files_fi
USE scipuff_fi
USE surface_fi
USE grdstr
USE vert_mod
USE vchk

IMPLICIT NONE

INTEGER,PARAMETER        :: MAXSTYP   = 60  ! Maximum Number of Surface types
REAL,PARAMETER           :: ARGMAX   = 20.0
REAL,PARAMETER           :: ARG2     = 2.*ARGMAX
REAL,PARAMETER           :: C_CUTOFF = 0.0

LOGICAL                  :: lsg                              !Single group flag
REAL, DIMENSION(4)       :: sl(4)                        !SLICE location
REAL                     :: dxv                              !GRID X spacing
REAL                     :: dyv                              !GRID Y spacing
INTEGER                  :: imc                              !multi-comp index
INTEGER                  :: ipuf                             !PUFF ID
REAL                     :: hrfac               !horizontal resolution factor

type ( puff_str ) p                                !PUFF Structure
type ( grid_str ) srf                              !GRID Structure

LOGICAL                     :: lpuf,lgrd

INTEGER, DIMENSION(MAXSTYP) :: ig
INTEGER, DIMENSION(MAXSTYP) :: igf
REAL, DIMENSION(MAXSTYP)    :: ccell
REAL, DIMENSION(MAXSTYP)    :: cfac
REAL, DIMENSION(3)          :: xr
REAL, DIMENSION(3)          :: xnrm
REAL(8), DIMENSION(7)       :: asig, bsig

INTEGER                     :: ng
INTEGER                     :: mlev,nlev,m1,n1,i1,i2,j1,j2,i,j
REAL                        :: vol,xmap,ymap,xbar,ybar,hbar,vbar
REAL                        :: del,dh,delh,delv,hp,vp,deth,rat,hz,hx,hy,zp
REAL                        :: znrm,zfac,v,vs,faci,h,xs,xp,ys,arg,zr,facs,fac,ccoc
REAL                        :: facr,dfac,zrefl
REAL                        :: delx, dely
type ( puff_totalcc ) pt


!---- rotate puff tensor

CALL rotate(p,rot,bsig)

bsig(1) = bsig(1) - bsig(2)**2/bsig(4)
bsig(3) = bsig(3) - bsig(2)*bsig(5)/bsig(4)
bsig(6) = bsig(6) - bsig(5)**2/bsig(4)

!---- calculate cdep at grid locations and increment dose

ccoc = 0.

ng = 3

DO i = 1,ng
  ig(i)  = i
  igf(i) = 0
END DO

vol = pi3*SQRT(p%det)
vol = vol/SQRT(pi/SNGL(bsig(4)))
cfac(1) = p%c
cfac(1) = p%cfo*cfac(1)/vol

lpuf = cfac(1) > C_CUTOFF

 IF (lpuf) THEN

  IF(lsg)THEN
    cfac(2) = (p%cfo**2)*(p%cc-p%ccb)/vol
  ELSE
    CALL get_totalcc(p,pt)
    cfac(2) = (p%cfo**2)*(pt%cct-pt%cctb)/vol
  END IF
  cfac(2) = MAX( cfac(2) , (ccoc*cfac(1))**2 )
  cfac(2) = 2.*p%si*cfac(2)
  cfac(3) = p%sv*cfac(2)

  CALL mapfac( p%xbar , p%ybar , xmap , ymap )

  xbar  = p%xbar
  ybar  = p%ybar

!---- projection of centroid onto horizontal line defining slice

  delx  = (xbar - sl(1))/xmap
  dely  = (ybar - sl(2))/ymap
  delx  = delx*SNGL(rot(1,1)) + dely*SNGL(rot(2,1))

  del  = 0.25/SNGL(bsig(1))
  del  = del/(hrfac**2)

  dh   = (dxv/xmap)**2+(dyv/ymap)**2
  mlev = MAX(INT(0.5*ALOG(del/dh)/ALOG(0.5)),0)
  dh   = SQRT(dh)

  vbar  = p%zbar
  hbar  = delx/dh + hmin

  nlev = 2**mlev
  dfac = 1.0/FLOAT(nlev)
  delh = dhg*dfac
  delv = dvg

  hp  = SQRT(ARG2/SNGL(bsig(1)))/dh

  vp  = SQRT(ARG2*p%szz)
  m1  = nhg*nlev
  n1  = nvg
  i1  = INT((hbar - hp - hmin)/delh)
  i2  = INT((hbar + hp - hmin)/delh) + 1
  j1  = INT((vbar - vp - vmin)/delv)
  j2  = INT((vbar + vp - vmin)/delv) + 1

  i1 = MAX0(i1,1)
  i2 = MIN(i2,m1)
  j1 = MAX0(j1,1)
  j2 = MIN(j2,n1)

  lgrd = (i2>=i1) .and. (j2>=j1)

  IF (lgrd) THEN

  szmx = MAX(szmx,p%szz)
  mxvgrd = MAX0(mxvgrd,j2-j1)
  rat  = SNGL(4.D0*(bsig(6)-bsig(3)**2/bsig(1)))

    IF (lter) THEN

      CALL get_topogPrj(SNGL(p%xbar),SNGL(p%ybar),hz,hx,hy)
      zrefl = p%zc
      zp = vbar - hz
      CALL get_asig(p,asig)
      CALL grnd_reflect(zp,asig,hx,hy,xr,xnrm,deth,znrm)
      zfac  = 0.5*znrm/(p%det*deth)

      DO i = i1,i2
        h  = (FLOAT(i)-0.5)*dfac
        xp = (h-hbar)*dh
        xs = xp*SNGL(rot(1,1)) + xbar
        ys = xp*SNGL(rot(1,2)) + ybar
        CALL get_topogPrj(xs,ys,hz,hx,hy)

        DO j = j1,j2
          v  = (FLOAT(j)-0.5)
          vs = vmin + v*dvg

          IF (hz <= vs) THEN
            zp = (vs-vbar)
            CALL zi_reflect(vbar,p%zc,zrefl,vs,rat,faci)
            arg = SNGL(bsig(1))*xp*xp+2.*SNGL(bsig(3))*xp*zp+SNGL(bsig(6))*zp*zp
            IF( arg < ARGMAX )THEN
              zr = xnrm(1)*(xs-xbar-xr(1)) + xnrm(2)*(ys-ybar-xr(2)) &
                             + xnrm(3)*(zp-xr(3))
              zr = MAX(zr,0.)
              facs = EXP(zfac*zr)
              fac  = EXP(-arg)*(1.+facs)*(1.+faci)
              ccell(1) = fac*cfac(1)
              ccell(2) = fac*cfac(2)
              ccell(3) = fac*cfac(3)
              IF (ccell(1) > C_CUTOFF) THEN
                CALL accum_surfv3(h,v,srfgrd(1,srf%ipgrd), &
                                 srfdat(1,srf%ipdat+1),ig,ng, &
                                   srf%nvar,srf%nvart,ccell,mlev, &
                                       srf%ncells,nhg,MAXSG)
                IF(nError /= NO_ERROR)GOTO 9999
              END IF
            END IF
          END IF
        END DO
      END DO

    ELSE

      zrefl = p%zc
      DO j = j1,j2
        v  = (FLOAT(j)-0.5)
        vs = vmin + v*dvg
        zp = (vs-vbar)
        CALL zi_reflect(vbar,p%zc,zrefl,vs,rat,faci)
        arg = vs*vbar*rat
        facs = EXP(-arg)
        facr = (1.+facs)*(1.+faci)

        DO i = i1,i2
          h  = (FLOAT(i)-0.5)*dfac
          xp = (h-hbar)*dh
          arg  = SNGL(bsig(1))*xp*xp+2.*SNGL(bsig(3))*xp*zp+SNGL(bsig(6))*zp*zp
          IF( arg < ARGMAX )THEN
            fac  = EXP(-arg)*facr
            ccell(1) = fac*cfac(1)
            ccell(2) = fac*cfac(2)
            ccell(3) = fac*cfac(3)
            IF (ccell(1) > C_CUTOFF) THEN
              CALL accum_surfv3(h,v,srfgrd(1,srf%ipgrd), &
                                 srfdat(1,srf%ipdat+1),ig,ng, &
                                   srf%nvar,srf%nvart,ccell,mlev, &
                                       srf%ncells,nhg,MAXSG)
              IF(nError /= NO_ERROR)GOTO 9999
            END IF
          END IF

        END DO
      END DO

    END IF

  END IF

END IF

9999  RETURN

END

!*******************************************************************************
!             accum_surfv
!*******************************************************************************
SUBROUTINE accum_surfv3(x,y,lgrid,cgrd,ig,ng,nv,nvt,ccell, &
                                                mlev,ncell,m0,MAXG)
USE error_fi

IMPLICIT NONE

REAL                             ::  x,y
INTEGER,DIMENSION(1)             :: lgrid
INTEGER,DIMENSION(1)             :: ig
INTEGER                          :: ng,nv,nvt,mlev,ncell,m0,MAXG
REAL, DIMENSION(MAXG,1)          :: cgrd
REAL, DIMENSION(1)               :: ccell
REAL                             :: xc,yc
INTEGER                          :: ix,iy,icell,ilev,iv

xc = x
yc = y

ix = INT(xc)
iy = INT(yc)
icell = iy*m0 + ix + 1

DO ilev = 1,mlev

  IF (lgrid(icell) == 0) THEN
    IF (ncell+2 > MAXG) THEN
      nError = SZ_ERROR
      eRoutine = 'AccumSurfVertical'
      eMessage = 'Too many Cells'
      WRITE(eInform,*)'Cells =',ncell,' : Max = ',MAXG
      GOTO 9999
    END IF
    CALL accum_cellv3(icell,lgrid,cgrd,nvt,ncell,MAXG)
  END IF

  xc = xc - FLOAT(ix)
  xc = xc + xc
  ix = INT(xc)

  icell = lgrid(icell) + ix

END DO

DO iv = 1,ng
  cgrd(icell,ig(iv)) = cgrd(icell,ig(iv)) + ccell(iv)
END DO

9999    RETURN
END
!*******************************************************************************
!             accum_cellv
!*******************************************************************************
SUBROUTINE accum_cellv3(icell,lgrid,cgrd,nv,ncell,MAX)

IMPLICIT NONE

INTEGER, DIMENSION(1)  :: lgrid(1)
INTEGER                :: icell,nv,ncell,MAX
REAL, DIMENSION(MAX,1) :: cgrd

!  Refine cell number ICELL of the adaptive grid pointer list LGRID
!  NCELL is the total number of cells in the grid

INTEGER                :: ii,iv

lgrid(icell) = ncell + 1

DO ii = 1,2
  lgrid(ncell+ii) = 0
  DO iv = 1,nv
    cgrd(ncell+ii,iv) = 0.0
  END DO
END DO

ncell = ncell + 2

RETURN
END
