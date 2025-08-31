!**** ROUTINES *********************************************************
!     Vertical Slice Routines
!           subroutine create_slicev  Generate grid data for a vertical slice
!           subroutine slice_dosv     Add a Puff contribution to the slice
!           subroutine accum_surfv    Surface cell accumating routine
!           subroutine accum_cellv    Surface cell refinement routine
!      common%puf         COMMON     - SCIPUFF main common
!      common%srf         COMMON     - SCIPUFF surface common
!      error%inc          COMMON     - Error handling
!      surface%inc        COMMON     - SCIPUFF surface definition

!**** HISTORY **********************************************************

!     23-Jan-95 (SFP) Initial comments and clean up of routines

!*******************************************************************************
!             create_slicev
!*******************************************************************************
subroutine create_slicev(hslice,slice,vext,nres,itys,itye)
use scipuff_fi
use surface_fi
use grdstr
use vert_mod

!     This routine generates the grid data from the puff file

implicit none

real    hslice(2,2)                         !PCSCIPUF Slice end points
real    slice(2,2)                          !Actual Slice endpoints
real    vext(2)                             !Vertical extent of slice
integer nres(2)                             !Slice resolution
integer itys                                !Start PUFF Type
integer itye                                !End PUFF Type

integer nxs,nys
real    xmins,ymins,dxs,dys
!common / copyslice / nxs,nys,xmins,ymins,dxs,dys

real dxv,dyv,zmn,zmx
integer nvs,ngrds,i,ivar,ipuf

logical lsg

!---- Set Slice endpoints

if(hslice(1,1) == DEF_VAL_R)then
  slice(1,1) = xmin
else
  slice(1,1) = hslice(1,1)
end if
if(hslice(2,1) == DEF_VAL_R)then
  slice(2,1) = ymin
else
  slice(2,1) = hslice(2,1)
end if
if(hslice(1,2) == DEF_VAL_R)then
  slice(1,2) = xmin + dxg*float(nx)
else
  slice(1,2) = hslice(1,2)
end if
if(hslice(2,2) == DEF_VAL_R)then
  slice(2,2) = ymin + dyg*float(ny)
else
  slice(2,2) = hslice(2,2)
end if

!---- Set slice vertical extent

if(vext(1) == DEF_VAL_R)then
  zmn = 0.
else
  zmn = vext(1)
end if
if(vext(2) == DEF_VAL_R)then
  zmx = zmax
else
  zmx = vext(2)
end if

!---- Set slice resolution

if(nres(1) == DEF_VAL_I)then
  nhg = nx
else
  nhg = nres(1)
end if
if(nres(2) == DEF_VAL_I)then
!        nvg = nz
  nvg = 25
else
  nvg = nres(2)
end if

!---- Set grid parameters

hmin = 0.
vmin = zmn

dhg = 1.
dvg = (zmx-zmn)/float(nvg)

dxv = (slice(1,2)-slice(1,1))/float(nhg)
dyv = (slice(2,2)-slice(2,1))/float(nhg)

!---- Initialize adaptive grid

nvs = srfdepxxx%nvart
ngrds = nhg*nvg

do i = 1,ngrds
  srfgrd(i,srfdepxxx%ipgrd) = 0
  do ivar = 1,nvs
    srfdat(i,srfdepxxx%ipdat+ivar) = 0.0
  end do
end do

srfdepxxx%ncells = ngrds

lsg = itys == itye

!---- Loop over puffs and Compute slice values

do ipuf=1,npuf
  if(puff(ipuf)%ityp >= itys .and. puff(ipuf)%ityp <= itye)then

!---- compute
    call slice_dosv(lsg,slice,dxv,dyv,puff(ipuf),srfdepxxx,ipuf)
    if(nError /= NO_ERROR) goto 9999
  endif
end do

!---- Set grid values

nxs   = nhg
nys   = -nvg
xmins = hmin
ymins = vmin
dxs   = dhg
dys   = dvg

9999  return
end
!*******************************************************************************
!             slice_dosv
!*******************************************************************************
subroutine slice_dosv(lsg,sl,dxv,dyv,p,srf,ipuf)
use scipuff_fi
use surface_fi
use grdstr
use vert_mod

implicit none


type ( grid_str ) srf                                          !GRID Structure
type ( puff_str ) p                                            !PUFF Structure
type ( puff_str_xc ) px                                            !PUFF Structure
type ( puff_totalcc ) pt

logical           lsg                                          !Single group flag
real              sl(4)                               !SLICE location
real              dxv                                          !GRID X spacing
real              dyv                                          !GRID Y spacing
integer           ipuf                                         !PUFF ID

real      ARGMAX
real      ARG2
real      C_CUTOFF
parameter ( ARGMAX   = 20.0 )
parameter ( ARG2     = 2.*ARGMAX )
parameter ( C_CUTOFF = 0.0  )

logical lpuf,lgrd

real ccell(MAXSF)
real xr(3), xnrm(3)
real    vol,cfac,ccfac,slfac,xmap,ymap,xbar,ybar,hfac,hbar,vbar
real    xlam,del,dh,delh,delv,shh,hp,vp,deth,rat,hz,hx,hy,zp
real    znrm,zfac,v,vs,faci,h,xs,xp,ys,yp,arg,zr,facs,fac,ccoc
real    facr,dfac
integer mlev,nlev,m1,n1,i1,i2,j1,j2,i,j
REAL(8), DIMENSION(7) :: asig


!---- calculate cdep at grid locations and increment dose

ccoc = 0.

vol   = pi3*sqrt(p%det)
cfac  = p%cfo*p%c/vol

lpuf = cfac > C_CUTOFF

if (lpuf) then

  if(lsg)then
    ccfac = (p%cfo**2)*(p%cc-p%ccb)/vol
  else
    call get_totalcc(p,pt)
    ccfac = (p%cfo**2)*(pt%cct-pt%cctb)/vol
  end if
  slfac = p%si*ccfac
  ccfac = amax1( ccfac , (ccoc*cfac)**2 )

  call mapfac( p%xbar , p%ybar , xmap , ymap )

  xbar  = p%xbar
  ybar  = p%ybar
  hfac  = dxv**2+dyv**2
  hbar  = ((xbar-sl(1))*dxv + (ybar-sl(2))*dyv)/hfac + hmin
  vbar  = p%zbar

  xlam = 0.5* (p%axx + p%ayy &
             + sqrt((p%axx-p%ayy)**2+4.*p%axy**2))
  del  = 0.25/xlam

  dh   = (dxv/xmap)**2+(dyv/ymap)**2
  mlev = max0(int(0.5*alog(del/dh)/alog(0.5)),0)

  nlev = 2**mlev
  dfac = 1.0/float(nlev)
  delh = dhg*dfac
  delv = dvg

  shh  = (dxv**2*p%sxx+dyv**2*p%syy+2.*dxv*dyv*p%sxy)/hfac
  hp   = sqrt(ARG2*shh/dh)
  vp   = sqrt(ARG2*p%szz)
  m1 = nhg*nlev
  n1 = nvg
  i1  = int((hbar - hp - hmin)/delh)
  i2  = int((hbar + hp - hmin)/delh) + 1
  j1  = int((vbar - vp - vmin)/delv)
  j2  = int((vbar + vp - vmin)/delv) + 1

  i1 = max0(i1,1)
  i2 = min0(i2,m1)
  j1 = max0(j1,1)
  j2 = min0(j2,n1)

  lgrd = (i2>=i1) .and. (j2>=j1)
!       type *,i1,i2,j1,j2
!       type *,mlev,delh,delv

  if (lgrd) then

    deth = p%axx*p%ayy - p%axy**2
    rat  = 0.5/(p%det*deth)

    if (lter) then

      call get_topogPrj(SNGL(p%xbar),SNGL(p%ybar),hz,hx,hy)
      zp = vbar - hz
      call get_asig(px,asig)
      call grnd_reflect(zp,asig,hx,hy,xr,xnrm,deth,znrm)
      zfac  = 0.5*znrm/(p%det*deth)

      do j = j1,j2
        v  = (float(j)-0.5)
        vs = vmin + v*dvg
        zp = (vs-vbar)
!               call zi_reflect(vbar,p%zi,vs,rat,faci)
        call zi_sv_reflect(vbar,p%zc,vs,rat,faci)

        do i = i1,i2
          h  = (float(i)-0.5)*dfac
          xs = sl(1) + h*dxv
          xp = (xs-xbar)/xmap
          ys = sl(2) + h*dyv
          yp = (ys-ybar)/ymap
          call get_topogPrj(xs,ys,hz,hx,hy)
          if (hz <= vs) then
            arg  = p%axx*xp*xp+2.*p%axy*xp*yp+2.*p%axz*xp*zp &
                    + p%ayy*yp*yp+2.*p%ayz*yp*zp+p%azz*zp*zp
            if( arg < ARGMAX )then
              zr = xnrm(1)*(xp-xr(1)) + xnrm(2)*(yp-xr(2)) &
                    + xnrm(3)*(zp-xr(3))
              zr = amax1(zr,0.)
              facs = exp(zfac*zr)
              fac  = exp(-arg)*(1.+facs)*(1.+faci)
              ccell(1) = fac*cfac
              ccell(2) = fac*ccfac
              ccell(3) = fac*slfac
              if (ccell(1) > C_CUTOFF) then
                call accum_surfv2(h,v,srfgrd(1,srf%ipgrd), &
                                   srfdat(1,srf%ipdat+1),1,-1, &
                                   srf%nvar,srf%nvart,ccell,ccell,mlev, &
                                   srf%ncells,nhg,MAXSG)
                if(nError /= NO_ERROR) goto 9999
              end if
            end if
          end if

        end do
      end do

    else

      do j = j1,j2
        v  = (float(j)-0.5)
        vs = vmin + v*dvg
        zp = (vs-vbar)
!               call zi_reflect(vbar,p%zi,vs,rat,faci)
        call zi_sv_reflect(vbar,p%zc,vs,rat,faci)
        arg = vs*vbar*rat
        facs = exp(-arg)
        facr = (1.+facs)*(1.+faci)

        do i = i1,i2
          h  = (float(i)-0.5)*dfac
          xs = sl(1) + h*dxv
          xp = (xs-xbar)/xmap
          ys = sl(2) + h*dyv
          yp = (ys-ybar)/ymap
          arg  = p%axx*xp*xp+2.*p%axy*xp*yp+2.*p%axz*xp*zp &
                    + p%ayy*yp*yp+2.*p%ayz*yp*zp+p%azz*zp*zp
          if( arg < ARGMAX )then
            fac  = exp(-arg)*facr
            ccell(1) = fac*cfac
            ccell(2) = fac*ccfac
            ccell(3) = fac*slfac
!       type *,ccell(1),fac,cfac
            if (ccell(1) > C_CUTOFF) then
              call accum_surfv2(h,v,srfgrd(1,srf%ipgrd), &
                                   srfdat(1,srf%ipdat+1),1,-1, &
                                   srf%nvar,srf%nvart,ccell,ccell,mlev, &
                                   srf%ncells,nhg,MAXSG)
              if(nError /= NO_ERROR) goto 9999
            end if
          end if

        end do
      end do

    end if

  end if

end if

return

9999    end
!*******************************************************************************
!             accum_surfv
!*******************************************************************************
subroutine accum_surfv2(x,y,lgrid,cgrd,igt,ig,nv,nvt,ccell,ccellt, &
                                                mlev,ncell,m0,MAXG)
use error_fi

implicit none

real x,y
integer lgrid(1)
integer igt,ig,nv,nvt,mlev,ncell,m0,MAXG
real cgrd(MAXG,1)
real ccell(1)
real ccellt(1)


real xc,yc
integer ix,iy,icell,ilev,iv

xc = x
yc = y

ix = int(xc)
iy = int(yc)
icell = iy*m0 + ix + 1

do ilev = 1,mlev

  if (lgrid(icell) == 0) then
    call accum_cellv2(icell,lgrid,cgrd,nvt,ncell,MAXG)
    if (ncell > MAXG) then
      nError = SZ_ERROR
    eRoutine = 'AccumSurfVertical'
    eMessage = 'Too many Cells'
    write(eInform,*)'Cells =',ncell,' : Max = ',MAXG
      goto 9999
    end if
  end if

  xc = xc - float(ix)
  xc = xc + xc
  ix = int(xc)

  icell = lgrid(icell) + ix

end do

if(igt > 0)then
  do iv = 1,nv
    cgrd(icell,igt+iv-1) = cgrd(icell,igt+iv-1) + ccellt(iv)
  end do
end if
if(ig > 0)then
  do iv = 1,nv
    cgrd(icell,ig+iv-1) = cgrd(icell,ig+iv-1) + ccell(iv)
  end do
end if

9999    return
end
!*******************************************************************************
!             accum_cellv
!*******************************************************************************
subroutine accum_cellv2(icell,lgrid,cgrd,nv,ncell,max)

implicit none

integer lgrid(1)
integer icell,nv,ncell,max
real cgrd(max,1)

!  Refine cell number ICELL of the adaptive grid pointer list LGRID
!  NCELL is the total number of cells in the grid

      integer ii,iv

lgrid(icell) = ncell + 1

do ii = 1,2
  lgrid(ncell+ii) = 0
  do iv = 1,nv
    cgrd(ncell+ii,iv) = 0.0
  end do
end do

ncell = ncell + 2

return
end

!=======================================================================
