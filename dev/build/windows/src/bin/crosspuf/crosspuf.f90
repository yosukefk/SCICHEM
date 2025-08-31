MODULE forxpp

save
integer      :: npt
character(4) :: name_xpp(5)
real         :: xfac, yfac
real         :: var_xpp(2000,5), slice(4)

END MODULE forxpp

PROGRAM crosspuf
use files_fi
use scipuff_fi
use surface_fi
use met_fi
use grdstr
use vert_mod, hmin_v => hmin
use forxpp
implicit none

!  This program calculates c, cc and sl*cc on a 1d adaptive line from a
!  SCIPUFF .puf file

character(80)     :: pfile,sfile
real              :: time, dummy=0.
integer           :: nxx, itys, itye, imc, nvs, ngrds
integer           :: i,ivar, ipuf, nch, ios
integer, external :: nblank, allocatePuffs

MAX1D_MET = HUGE(0)
MAXPUF = 20000
MAXSG = 25000

CALL init_error()

call set_version(iversion_code)

!------  Read Input

call input(pfile,time,slice,sfile,nxx,zlev,itys,itye,imc)


!------ initialize

srfdepxxx%nvar   = 3
!  srfdepxxx%indx_m = 1
!  srfdepxxx%indx_v = 2
!  srfdepxxx%indx_s = 3
srfdepxxx%nvart  = 3
srfdepxxx%ncells = 0
srfdepxxx%record = 0
srfdepxxx%ipgrd  = 1
srfdepxxx%ipdat  = 0

nhg = nxx
nvg = 1
nvs = srfdepxxx%nvart
dhg = 1.

hmin = 0.
vmin = zlev

name_xpp(1) = 'X'
name_xpp(2) = 'Y'
name_xpp(3) = 'C'
name_xpp(4) = 'CC'
name_xpp(5) = 'SL'

nch=nblank(pfile)
call read_puff_util(pfile(1:nch),time,dummy)

call set_line(slice)

!------ Initialize adaptive grid

ngrds = nhg

do i = 1,ngrds
  srfgrd(i,srfdepxxx%ipgrd) = 0
  do ivar = 1,nvs
    srfdat(i,srfdepxxx%ipdat+ivar) = 0.0
  end do
end do

srfdepxxx%ncells = ngrds

!------ Compute line

do ipuf=1,npuf
  if(puff(ipuf)%ityp >= itys .and. puff(ipuf)%ityp <= itye)then
    call slice_dos(slice,puff(ipuf),imc,srfdepxxx)
  endif
end do

!------ Output line

nch = nblank(sfile)
call output_line(srfdepxxx,sfile(1:nch))

9999 CONTINUE

CALL deallocatePuffs()

stop
end

!-----------------------------------------------------------------------

subroutine input(pfile,time,sl,sfile,nxx,zlev,itys,itye,imc)

use scipuff_fi
use surface_fi
use files_fi
use UtilMtlAux

implicit none

!-- Inputs
character*(*)           :: pfile,sfile
integer                 :: nxx,itys,itye,imc
real                    :: time
real, dimension(4)      :: sl

!-- Locals
character*80            :: rfile
integer                 :: nch,i,nspec,nsg,imat,isg,nchr
real                    :: zlev
logical                 :: IsLiquid,lerror
integer, external       :: nblank

!------ Puff  file

call get_file('Puff',pfile,nch)
write(6,*)TRIM(pfile)

write(6,100)
100  format(' Enter time : ',$)
read(5,*) time
write(6,*) time

!------  Read project File

nch = nblank(pfile)
lun_prj = 1
file_prj = pfile(1:nch-3)//'prj'
call read_prj
if (nError .ne. NO_ERROR .and. nError .ne. VN_ERROR) then
  print*,'Error reading project file',iversion,iversion_code
  print*,eMessage
  print*,eInform
  print*,eAction
  stop
else
  CALL init_error
end if

!------  Materials

write(6,6000)
6000 format('Materials List :',/, &
'ID  Name - No. Subgroups - No. Multi-comp Species')
do i = 1,ntypm
nspec = 0
nsg = GetSubgroups(material(i),mat_aux)
if (IsLiquid(material(i)%icls)) nsg = 2
write(6,*)"Enter ",i," for "//TRIM(material(i)%cmat)//" - ", &
           &nsg," - ",nspec
end do

write(6,200)
200  format(' Matl ID, Subgrp (0=total) , Mul-comp (0=no) : ',$)
read(5,*)imat,isg,imc
write(6,*)imat,isg,imc
nspec = 0
imc = min0(imc,nspec)

if(imat > 0)then
  if(isg > 0)then
    itys = material(imat)%ioffp + isg
    itye = itys
    if (IsLiquid(material(imat)%icls) .and. isg == 2) then
      itye = GetSubgroups(material(imat),mat_aux) + 1
    end if
  else
    itys = material(imat)%ioffp + 1
    itye = material(imat)%ioffp + &
           MAX(1,GetSubgroups(material(imat),mat_aux))
    if (IsLiquid(material(imat)%icls)) itye = itye + 1
  end if
else
  itys = 1
  itye = ntypp
end if

write(6,110)
110  format(' Enter line end points (x1,y1 - x2,y2) : ',$)
read(5,*)sl(1),sl(2),sl(3),sl(4)
write(6,*)sl(1),sl(2),sl(3),sl(4)

!------ Line height

write(6,120)
120  format(' Enter height : ',$)
read(5,*)zlev
write(6,*)zlev
write(6,130)
130  format(' Enter m0 : ',$)
read(5,*)nxx
write(6,*)nxx

!------ Output file

101  call get_file('Enter name of line',sfile,nch)
if (nch == 0) stop
write(6,*)TRIM(sfile)
!call translate_file('P',sfile(1:nch),rfile,80,nchr,lerror)
!if(lerror)then
!  write(6,*)'File not deleted - ',sfile(1:nch)
!  go to 101
!end if
!sfile = rfile(1:nchr)
!write(6,*)nchr,rfile(1:nchr)
write(6,*)'Slice output for puff types',itys,' to',itye

return

end

!=======================================================================

subroutine output_line(srf,sfile)

use scipuff_fi
use surface_fi
use files_fi
use met_fi
use grdstr
use vert_mod, hmin_v => hmin
use forxpp

implicit none

!--- Inputs
type (grid_str)               :: srf
character*(*)                 :: sfile

!--- Locals
integer                       :: i,ir,iv,il,nvs
integer                       :: iflag,maxn,nvar
real                          :: x,dh
real, dimension(3)            :: c0, cl, cr

!------ Output surface data
ir    = srf%record
nvs   = srf%nvart
npt   = 0
xfac  = (slice(3)-slice(1))/float(nhg)
yfac  = (slice(4)-slice(2))/float(nhg)

do i = 1,nhg
  x  = float(i) - 0.5
  dh = 1.0
  if (srfgrd(i,srf%ipgrd) == 0) then
    npt = npt + 1
    var_xpp(npt,1) = x*xfac + slice(1)
    var_xpp(npt,2) = x*yfac + slice(2)
    var_xpp(npt,3) = srfdat(i,srf%ipdat+1)
    var_xpp(npt,4) = srfdat(i,srf%ipdat+2)
    var_xpp(npt,5) = srfdat(i,srf%ipdat+3)
!      write(77,*) x,(srf%gridd(i,ivar),ivar=1,nvs)
  else
    do iv = 1,nvs
      c0(iv) = srfdat(i,srf%ipdat+iv)
    end do
    if (i > 1) then
      il = i - 1
      do iv = 1,nvs
        cl(iv) = srfdat(il,srf%ipdat+iv)
      end do
    else
      il = 0
      do iv = 1,nvs
        cl(iv) = 0.0
      end do
    end if
    if (i < nhg) then
      ir = i + 1
      do iv = 1,nvs
        cr(iv) = srfdat(ir,srf%ipdat+iv)
      end do
    else
      ir = 0
      do iv = 1,nvs
        cr(iv) = 0.0
      end do
    end if
    call get_cell_cross(i,c0,il,cl,ir,cr,x,dh,srf)
  end if
end do

iflag    = 1
maxn      = 2000
nvar     = 5
title    = 'CROSSPUF'

if( sfile(1:4) == 'TXT:' )then
  call write_ascii(78,sfile(5:),maxn,nvar,npt,name_xpp,title, &
               var_xpp,iflag)
else
  call write_xpp(78,sfile,maxn,nvar,npt,name_xpp,title, &
               var_xpp,iflag)
end if

return
end

!=======================================================================

recursive subroutine get_cell_cross(i,c0,il,cl,ir,cr,x,dh,srf)

use scipuff_fi
use surface_fi
use files_fi
use grdstr
use forxpp

implicit none


!--- Inputs
type (grid_str)                  :: srf
integer                          :: i,il,ir
real                             :: x,dh
real, dimension(3)               :: c0, cl, cr

!--- Locals
integer                          :: i0,ivar,jl,jr
real                             :: x0,dn
real, dimension(3)               :: d0, dl, dr

dn = 0.5*dh

i0 = srfgrd(i,srf%ipgrd)

x0 = x - 0.5*dn
do ivar = 1,srf%nvart
  d0(ivar) = 0.75*c0(ivar) + 0.25*cl(ivar) + srfdat(i0,srf%ipdat+ivar)
end do
if (srfgrd(i0,srf%ipgrd) == 0) then
  npt = npt + 1
  var_xpp(npt,1) = x0*xfac + slice(1)
  var_xpp(npt,2) = x0*yfac + slice(2)
  var_xpp(npt,3) = d0(1)
  var_xpp(npt,4) = d0(2)
  var_xpp(npt,5) = d0(3)
!    write(77,*) x0,(d0(ivar),ivar=1,srf%nvart)
else
  call set_left(il,c0,cl,dl,srf,jl)
  jr = i0 + 1
  do ivar = 1,srf%nvart
    dr(ivar) = 0.75*c0(ivar) + 0.25*cr(ivar) &
         + srfdat(jr,srf%ipdat+ivar)
  end do
  call get_cell_cross(i0,d0,jl,dl,jr,dr,x0,dn,srf)
end if

i0 = srfgrd(i,srf%ipgrd) + 1
x0 = x + 0.5*dn
do ivar = 1,srf%nvart
  d0(ivar) = 0.75*c0(ivar) + 0.25*cr(ivar) + srfdat(i0,srf%ipdat+ivar)
end do
if (srfgrd(i0,srf%ipgrd) == 0) then
  npt = npt + 1
  var_xpp(npt,1) = x0*xfac + slice(1)
  var_xpp(npt,2) = x0*yfac + slice(2)
  var_xpp(npt,3) = d0(1)
  var_xpp(npt,4) = d0(2)
  var_xpp(npt,5) = d0(3)
!    write(77,*) x0,(d0(ivar),ivar=1,srf%nvart)
else
  call set_right(ir,c0,cr,dr,srf,jr)
  jl = i0 - 1
  do ivar = 1,srf%nvart
    dl(ivar) = 0.75*c0(ivar) + 0.25*cl(ivar) &
        + srfdat(jl,srf%ipdat+ivar)
  end do
  call get_cell_cross(i0,d0,jl,dl,jr,dr,x0,dn,srf)
end if

return
end

!=======================================================================

subroutine slice_dos(sl,p,imc,srf)

use scipuff_fi
use surface_fi
use files_fi
use met_fi
use grdstr
use vert_mod, hmin_v => hmin

implicit none

!--- Inputs
type( puff_str )              :: p
type (grid_str)               :: srf
integer                       :: imc
real, dimension(4)            :: sl

!-- Locals
real, parameter               :: ARGMAX   = 20.0
real, parameter               :: ARG2     = 2.*ARGMAX
real, parameter               :: C_CUTOFF = 0.0
integer                       :: mlev,nlev
integer                       :: m1,i1,i2,i
real, dimension(MAXSF)        :: ccell
real, dimension(3)            :: xr, xnrm
real(8), dimension(7)            :: asig
real                          :: vol,cfac,ccoc,ccfac,slfac
real                          :: xmap,ymap,xbar,ybar,hfac,hbar,vbar
real                          :: shh,del,xlam,dh,dfac,hp,vp
real                          :: rat,hz,hx,hy,zp,znrm,zfac,vs,faci
real                          :: h,xs,xp,ys,yp,arg,zr,facs,fac,facr
real                          :: xh0,yh0,delh,deth
logical                       :: lpuf,lgrd
! type( puff_mc )             :: pm ! Non multi component version

!------ calculate cdep at grid locations and increment dose

vol   = pi3*sqrt(p%det)
!  if (imc == 0) then ! non-multi component version
  cfac  = p%c/vol
!  else
!    call get_mc(p,pm)
!    cfac = pm%mc(imc)/vol
!  print*,imc,p%xbar,pm%mc(1),cfac
!  end if
ccoc  = 0.
!  lpuf = cfac > C_CUTOFF
lpuf = .true.

if (lpuf) then

  ccfac = (p%cc-p%ccb)/vol
  slfac = p%si*ccfac
  ccfac = amax1( ccfac , (ccoc*cfac)**2 )

  call mapfac( p%xbar , p%ybar , xmap , ymap )

  xbar  = p%xbar
  ybar  = p%ybar
  hfac  = dxg**2+dyg**2
  hbar  = ((xbar-sl(1))*dxg + (ybar-sl(2))*dyg)/hfac + hmin
  vbar  = p%zbar

  shh = amax1(p%sxx,p%syy)
  xh0 = sl(1) + (hbar-hmin)*dxg
  yh0 = sl(2) + (hbar-hmin)*dyg
  del = ((xbar-xh0)/xmap)**2 + ((ybar-yh0)/ymap)**2

  if (del < ARG2*shh) then

!    xlam = 0.5* (p%axx + p%ayy
!     $    + sqrt((p%axx-p%ayy)**2+4.*p%axy**2))
    xlam = (p%axx*dxg*dxg + p%ayy*dyg*dyg + 2.*p%axy*dxg*dyg)/hfac
    del  = 0.125/xlam

    dh   = (dxg/xmap)**2+(dyg/ymap)**2
    mlev = int(0.5*alog(del/dh)/alog(0.5))
    mlev = max0(mlev,0)

    nlev = 2**mlev
    dfac = 1.0/float(nlev)
    delh = dhg*dfac

!    shh  = (dxg**2*p%sxx+dyg**2*p%syy+2.*dxg*dyg*p%sxy)/hfac
    shh  = 1.0/xlam
    hp   = sqrt(ARG2*shh/dh)
    vp   = sqrt(ARG2*p%szz)
    m1 = nhg*nlev
    i1  = int((hbar - hp - hmin)/delh)
    i2  = int((hbar + hp - hmin)/delh) + 1

    i1 = max0(i1,1)
    i2 = min0(i2,m1)

     lgrd = (i2 >= i1) .and. (abs(vbar-zlev) <=  vp)

  else

    lgrd = .false.

  end if

  if (lgrd) then

    deth = p%axx*p%ayy - p%axy**2
    rat  = 0.5/(p%det*deth)

    if (lter) then

      call get_topogPrj(SNGL(p%xbar),SNGL(p%ybar),hz,hx,hy)
      zp = vbar - hz
      call get_asig(p,asig)
      call grnd_reflect(zp,asig,hx,hy,xr,xnrm,deth,znrm)
!        zfac  = amax1(4.*znrm/(p%det*deth),0.)
      zfac = 0.5*znrm/(p%det*deth)

    vs = zlev
    zp = (vs-vbar)
    call zi_reflect(vbar,p%zi,p%zi,vs,rat,faci)

    do i = i1,i2
      h  = (float(i)-0.5)*dfac
      xs = xmin + h*dxg
      xp = (xs-xbar)/xmap
      ys = ymin + h*dyg
      yp = (ys-ybar)/ymap
      call get_topogPrj(xs,ys,hz,hx,hy)
      if (hz .le. vs) then
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
      !     if (ccell(1) > C_CUTOFF) then
        call accum_line(h,srfgrd(1,srf%ipgrd), &
               srfdat(1,srf%ipdat+1),1,-1, &
               srf%nvar,srf%nvart,ccell,mlev, &
               srf%ncells,nhg,MAXSG)
      !     end if
       end if
    end if

  end do

    else

  vs = zlev
  zp = (vs-vbar)
  call zi_reflect(vbar,p%zi,p%zi,vs,rat,faci)
  arg = vs*vbar*rat
  facs = exp(-arg)
  facr = (1.+facs)*(1.+faci)

  do i = i1,i2
    h  = (float(i)-0.5)*dfac
    xs = xmin + h*dxg
    xp = (xs-xbar)/xmap
    ys = ymin + h*dyg
    yp = (ys-ybar)/ymap
    arg  = p%axx*xp*xp+2.*p%axy*xp*yp+2.*p%axz*xp*zp &
        + p%ayy*yp*yp+2.*p%ayz*yp*zp+p%azz*zp*zp
    if( arg < ARGMAX )then
      fac  = exp(-arg)*facr
      ccell(1) = fac*cfac
      ccell(2) = fac*ccfac
      ccell(3) = fac*slfac
!              if (ccell(1) > C_CUTOFF) then
        call accum_line(h,srfgrd(1,srf%ipgrd), &
       srfdat(1,srf%ipdat+1),1,-1, &
       srf%nvar,srf%nvart,ccell,mlev, &
       srf%ncells,nhg,MAXSG)
!              end if
    end if

      end do

    end if

  end if

end if


return

end

!=======================================================================

subroutine accum_line(x,lgrid,cgrd,igt,ig,nv,nvt,ccell, &
     mlev,ncell,m0,MAXG)

implicit none

!-- Inputs
integer                 :: igt,ig,nv,nvt,mlev,ncell,m0,MAXG
integer, dimension(*)   :: lgrid
real, dimension(*)      :: ccell
real, dimension(MAXG,*) :: cgrd
real                    :: x

!-- Locals
integer                 :: ilev,ix,iv,icell
real                    :: xc

xc = x

ix = int(xc)
icell = ix + 1

do ilev = 1,mlev

  if (lgrid(icell) == 0) then
    call accum_cell(icell,lgrid,cgrd,nvt,ncell,MAXG)
    if (ncell > MAXG) then
      write(6,*) 'accum_line: too many cells'
      stop
    end if
  end if

  xc = xc - float(ix)
  xc = xc + xc
  ix = int(xc)

  icell = lgrid(icell) + ix

end do

if(igt > 0)then
  do iv = 1,nv
    cgrd(icell,igt+iv-1) = cgrd(icell,igt+iv-1) + ccell(iv)
  end do
end if
if(ig > 0)then
  do iv = 1,nv
    cgrd(icell,ig+iv-1) = cgrd(icell,ig+iv-1) + ccell(iv)
  end do
end if

return
end

!-------------------------------------------------------------------------------

subroutine set_line(sl)

use scipuff_fi
use surface_fi
use met_fi
use files_fi
use grdstr
use vert_mod, hmin_v => hmin

implicit none

!-- Inputs
real, dimension(4) :: sl
!-- Locals
real               :: x1,y1,x2,y2

!------ Input sl = 2 endpoints

x1 = sl(1)
y1 = sl(2)

x2 = sl(3)
y2 = sl(4)

xmin = x1
dxg = (x2-x1)/float(nhg)

ymin = y1
dyg = (y2-y1)/float(nhg)

return
end

!===============================================================================

subroutine set_left(il,c0,cl,dl,srf,jl)

use scipuff_fi
use surface_fi
use files_fi
use grdstr

implicit none

!-- Inputs
integer             :: il,jl,ivar
real, dimension(3)  :: c0, cl, dl
type (grid_str)     :: srf

do ivar = 1,srf%nvart
  dl(ivar) = 0.75*cl(ivar) + 0.25*c0(ivar)
end do

if (il > 0) then
  jl = srfgrd(il,srf%ipgrd)
  if (jl > 0) then
    jl = jl + 1
    do ivar = 1,srf%nvart
      dl(ivar) = dl(ivar) + srfdat(jl,srf%ipdat+ivar)
    end do
  end if
else
  jl = 0
end if

return
end

!===============================================================================

subroutine set_right(ir,c0,cr,dr,srf,jr)

use scipuff_fi
use surface_fi
use files_fi
use grdstr

implicit none

!-- Inputs
integer             :: ir,jr
real, dimension(3)  :: c0, cr, dr
type (grid_str)     :: srf

!-- Locals
integer             :: ivar

do ivar = 1,srf%nvart
  dr(ivar) = 0.75*cr(ivar) + 0.25*c0(ivar)
end do

if (ir > 0) then
  jr = srfgrd(ir,srf%ipgrd)
  if (jr > 0) then
    do ivar = 1,srf%nvart
      dr(ivar) = dr(ivar) + srfdat(jr,srf%ipdat+ivar)
    end do
  end if
else
  jr = 0
end if

return
end

