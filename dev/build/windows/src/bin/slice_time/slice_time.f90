MODULE limits
  SAVE
  INTEGER, PARAMETER :: MAXSL = 100
  INTEGER            :: MAXLEV
END MODULE

PROGRAM slicepuf
use scipuff_fi
use surface_fi
use met_fi
use sagstr_fd
use limits
IMPLICIT NONE
TYPE (SAGgrid_str) grd

!  This program calculates c, cc and sl*cc on a 2d adaptive grid from a
!  SCIPUFF puf file

!------ slice height is fixed but may have multiple time breaks

integer :: i,ivar,ipuf,isl,nt,nxx,nyy,itys,itye,imat,isg,imc,nchp,nch,ios
integer, external :: nblank, allocatePuffs
character*80 pfile,sfile
real, dimension(MAXSL) :: time
real, dimension(MAXSF) :: zmass
real, dimension(3) ::  xr, xnrm
real :: xp,yp,zs,xmns,xmxs,ymns,ymxs,zfac,time_puff
INTERFACE
  SUBROUTINE slice_time_dos(zs,pin,zmass,xoff,yoff,xr,xnrm,zfac,srf)
    use scipuff_fi
    use surface_fi
    use sagstr_fd
    use accumsrf
    use limits
    real                         :: zs, xoff, yoff, zfac
    type ( puff_str )            :: pin
    real, dimension(3)           :: zmass, xr, xnrm
    type ( SAGgrid_str ),target  :: srf
  END SUBROUTINE slice_time_dos
END INTERFACE

MAX1D_MET = HUGE(0)
MAXPUF = 20000
MAXSG = 25000

call init_error()

call set_version(iversion_code)

!------ Read Input

call input_slice_time(pfile,time,nt,zs,sfile,xmns,xmxs,nxx,ymns,ymxs,nyy, &
                      itys,itye,imat,isg,imc)
if(nERROR /= NO_ERROR) go to 9999

nchp = nblank(pfile)

!------ Create Output File

nch = nblank(sfile)
allocate(grd%ipgrd(MAXSG))
allocate(grd%ipdat(MAXSG*3))
allocate(grd%ipnam(3))
grd%mxgrd = MAXSG
grd%file = sfile
call create_slice(xmns,xmxs,nxx,ymns,ymxs,nyy,grd, &
                itys,itye,imat,isg)

!------ Loop over time breaks

do isl = 1,nt

  write(6,6000)isl,time(isl)
  6000 format(' Working on time break number',i3,' - for time ',f8.3)

  call read_puff_util(pfile(1:nchp),time(isl),time_puff)

!-------  Initialize adaptive grid

  grd%ncells = grd%nx*grd%ny

  do i = 1,grd%ncells
    grd%ipgrd(i) = 0
    do ivar = 1,grd%nvart
      grd%ipdat(i+(ivar-1)*grd%mxgrd) = 0.0
    end do
  end do

!-------- Compute slice values

  do ipuf=1,npuf
    if(puff(ipuf)%ityp >= itys .and. puff(ipuf)%ityp <= itye)then
      call z_dos(zs,puff(ipuf),imc,zmass,xp,yp,xr,xnrm,zfac)
      call slice_time_dos(zs,puff(ipuf),zmass,xp,yp,xr,xnrm,zfac,grd)
    end if
  end do



!-------- Output slice values

  call output_slice_time(time_puff,grd)


end do

!------ Done - Close file

close(unit=grd%nunit)

9999 continue

CALL deallocatePuffs()
IF( ASSOCIATED(grd%ipgrd) )deallocate(grd%ipgrd)
IF( ASSOCIATED(grd%ipdat) )deallocate(grd%ipdat)
IF( ASSOCIATED(grd%ipnam) )deallocate(grd%ipnam)


stop
end

!===============================================================================

subroutine input_slice_time(pfile,time,ns,sl,sfile,xmns,xmxs,nxx,ymns,ymxs,nyy, &
                      itys,itye,imat,isg,imc)
use scipuff_fi
use surface_fi
use files_fi
use UtilMtlAux
use limits
implicit none
character*(*) pfile,sfile
character*80 line, rfile
real, dimension(MAXSL) :: time
logical :: lerr, IsLiquid,lerror
integer :: nsg, i, nch, nspec, nchr
integer, external :: nblank
real :: sl, xmns,xmxs, ymns,ymxs, tinc
integer :: ns, nxx, nyy,itys,itye, imat, isg, imc

!------ Puff file/time

call get_file('Puff',pfile,nch)

write(6,100)
100     format(' Enter height : ',$)
read(5,*) sl

!------ Read Puff File Commons

nch = nblank(pfile)
lun_prj = 1
file_prj = pfile(1:nch-3)//'prj'

call read_prj

if (nError == VN_ERROR) then
  nError = NO_ERROR
else if (nError /= NO_ERROR) then
  go to 9999
end if

!------ Materials

write(6,*)'Materials List :'
write(6,*)'ID      Name    No. Subgroups  ' &
              //'No. Multi-comp Species'
do i = 1,ntypm
  nspec = 0
  nsg = GetSubgroups(material(i),mat_aux)
  if (IsLiquid(material(i)%icls)) nsg = 2
  write(6,*)"Enter ",i," for "//TRIM(material(i)%cmat)//" - ", &
                 nsg," - ",nspec
end do

write(6,200)
200     format(' Matl ID, Subgrp (0=total) , Mul-comp (0=no) : ',$)
read(5,*)imat,isg,imc
nspec = 0
imc = min0(imc,nspec)
if(imat > 0)then
  if(isg > 0)then
    itys = material(imat)%ioffp + isg
    itye = itys
   !! if (IsLiquid(material(imat)%icls) .and. isg == 2) then
   !!  itye = GetSubgroups(material(imat),mat_aux) + 1
  !!  end if
  else
    itys = material(imat)%ioffp + 1
    itye = material(imat)%ioffp + GetSubgroups(material(imat),mat_aux) !!  &
  !!                   max0(1,GetSubgroups(material(imat),mat_aux))
  !!  if (IsLiquid(material(imat)%icls)) itye = itye + 1
  end if
else
  itys = 1
  itye = ntypp
end if

write(6,*)'Slice output for puff types',itys,' to',itye

!------ slices

write(6,110)
110     format(' Enter time breaks (t1, t2, ...) : ',$)
read(5,500)line
500     format(a)
nch = LEN_TRIM(line)
call get_value(line,nch,',',' ',lerr)
if(lerr)then
  print *,'****ERROR getting time breaks'
  stop
end if
ns = 1
1000    call get_r(line,nch,time(ns),lerr)
if(.not.lerr)then
  ns = ns + 1
  if (ns > MAXSL) then
    write(6,*) 'No more time breaks allowed'
    goto 1001
  end if
  goto 1000
else
  ns = ns - 1
end if
if(ns < 1)then
  stop '****No time breaks'
end if

1001    continue

!------ check for start, end, increment input

if (ns == 3) then
  if (time(ns) < 0.) then
    tinc = abs(time(ns))
    ns   = min0(nint((time(2)-time(1))/tinc) + 1,MAXSL)
    tinc = (time(2)-time(1))/float(ns-1)
    do i = 2,ns
      time(i) = time(1) + float(i-1)*tinc
    end do
  end if

!------ check for all time break input

else if (ns == 1) then
  if (time(1) < 0.) then
    call read_all_times(pfile,ns,time,MAXSL)
  end if
end if

!------ output file

101     call get_file('Enter name of slice',sfile,nch)
if (nch == 0) stop
call translate_file('P',sfile(1:nch),rfile,80,nchr,lerror)
if(lerror)then
  write(6,*)'File not deleted - ',sfile(1:nch)
  go to 101
end if
sfile = rfile(1:nchr)

!------ output domain

write(6,120)
120 format(' Enter slice end points (x1,x2 - y1,y2) : ',$)
read(5,*)xmns,xmxs,ymns,ymxs

write(6,140)
140     format(' Enter level of refinement wanted on grid : ',$)
nxx=10
nyy=10
read(5,*)maxlev
return

9999 continue
write(6,*)'error input subroutine'
return

end

!===============================================================================

subroutine create_slice(xmns,xmxs,nxx,ymns,ymxs,nyy,srf, &
                itys,itye,imat,isg)
use scipuff_fi
use surface_fi
use sagstr_fd

implicit none

type ( SAGgrid_str ) srf

real :: xmns, xmxs, ymns, ymxs, tx
integer :: nxx, nyy, itys, itye, imat, isg, ityp, nsrf
integer :: ierror, ngrds, nvs, i

!------ Setup plot file stuff

ityp = 1

if (itys > itye) then
  material(imat)%lsrft = .true.
  material(imat)%lsrfg = .false.
else
  material(imat)%lsrft = .false.
  material(imat)%lsrfg = .true.
end if

srf%nvart = 3
srf%nunit = 2
srf%record = 1

srf%ipnam(1) = 'C'
srf%ipnam(2) = 'CC'
srf%ipnam(3) = 'SL'

srf%nx = nxx
srf%ny = nyy

srf%xmin = xmns
srf%ymin = ymns

srf%dx=(xmxs-xmns)/float(srf%nx)
srf%dy=(ymxs-ymns)/float(srf%ny)

!------ Create surface file

nsrf = srf%nunit

open(unit=nsrf, file=TRIM(srf%file), status='NEW', access='DIRECT', &
          recl=128*4, iostat=ierror)
if(ierror /= 0)then
  print *,TRIM(srf%file),' ',ierror
  stop 'ERROR OPENING SURFACE FILE'
end if

!------ Write initial header

tx    = 0.0
ngrds = 0
nvs   = srf%nvart
write(nsrf,rec=1) tx, ngrds, srf%nx, srf%ny, srf%xmin, srf%ymin,&
                  srf%dx, srf%dy, nvs, (srf%ipnam(i),i=1,nvs),iversion

srf%record = 1

return

1000    format(a,i3.3)
1001    format(a,i2.2,a)

end

!=======================================================================

subroutine output_slice_time(zs,srf)
use scipuff_fi
use surface_fi
use sagstr_fd

implicit none
real :: zs, tmp
integer :: itm, ir, nwrt, nvs, ngrds, ii, j1, i, j, ivar, ntmp
type (SAGgrid_str ) srf
!------ Output surface data

itm   = 0
tmp   = zs
ir    = srf%record
nwrt  = srf%nunit
nvs   = srf%nvart
ngrds = srf%ncells

write(nwrt,rec=ir) tmp, ngrds, srf%nx, srf%ny, srf%xmin, srf%ymin, &
             srf%dx, srf%dy, nvs, (srf%ipnam(i),i=1,nvs), iversion

ir = ir + 1
do ii = 1,ngrds,128
  j1 = min0(ii+127,ngrds)
  write(nwrt,rec=ir) (srf%ipgrd(j), j=ii,j1)
  ir = ir + 1
end do
do ivar = 1,nvs
  do ii = 1,ngrds,128
    j1 = min0(ii+127,ngrds)
    write(nwrt,rec=ir) (srf%ipdat(j+(ivar-1)*srf%mxgrd), j=ii,j1)
    ir = ir + 1
  end do
end do

ntmp  = 0
srf%record = ir

write(nwrt,rec=ir) tmp, ntmp, srf%nx, srf%ny, srf%xmin, srf%ymin, &
             srf%dx, srf%dy, nvs, (srf%ipnam(i),i=1,nvs), iversion

return

end

!=======================================================================

subroutine slice_time_dos(zs,pin,zmass,xoff,yoff,xr,xnrm,zfac,srf)

use scipuff_fi
use surface_fi
use sagstr_fd
use accumsrf
use limits

implicit none

real :: zs, xoff, yoff, zfac, zp, xmap, ymap, xbar, ybar, xlam
real :: del, dfac, delx, dely, xfac, xp, yp, xplus, xminus, cxy
real :: y, ys, x, xs, h, hx, hy, arg, zr, fac
integer :: isrf_cc, isrf_sl, nlev, m1, n1, j1, j2, j
integer :: i1, i2, isrf_c, mlev

integer,parameter :: MAXSTYP = 60
real, parameter ::  ARGMAX   = 20.0
real, parameter ::  ARG2     = 2.*ARGMAX
real, parameter ::  C_CUTOFF = 0.0

type ( SAGgrid_str ),target  :: srf
type ( SAGgrid_str ),pointer :: srfP

logical :: lpuf,lgrd

type ( puff_str ) p, pin

real, dimension(MAXSTYP) :: ccell
real, dimension(MAXSTYP) :: cfac
real, dimension(3) :: zmass, xr, xnrm

integer i, ng, ig(MAXSTYP), igf(MAXSTYP), icell, iout

!-----------------------------------------------------------------------------
srfP => srf
!------ calculate cdep at grid locations and increment dose

icell   = 0
isrf_c  = 1
isrf_cc = 2
isrf_sl = 3
ng      = 3
do i = 1,ng
  ig(i)  = i
  igf(i) = 0
end do

lpuf = zmass(isrf_c) > C_CUTOFF

if (lpuf) then

  p = pin

  if (zs >= 1.e20) then
    p%axx = p%axx - p%axz*p%axz/p%azz
    p%ayy = p%ayy - p%ayz*p%ayz/p%azz
    p%axy = p%axy - p%axz*p%ayz/p%azz
  else
    zp = zs - p%zbar
  end if

  cfac(1) = zmass(isrf_c )
  cfac(2) = zmass(isrf_cc)
  cfac(3) = zmass(isrf_sl)

  call mapfac( SNGL(p%xbar) , SNGL(p%ybar) , xmap , ymap )

  xbar  = p%xbar + xoff*xmap
  ybar  = p%ybar + yoff*ymap

  xlam = 0.5* (p%axx + p%ayy &
             + sqrt((p%axx-p%ayy)**2+4.*p%axy**2))
  del  = sqrt(0.125/xlam)
  mlev = max0(int(alog(del/amax1(srf%dx/xmap,srf%dy/ymap))/alog(0.5)),0)
  if (mlev > maxlev) then
    mlev = maxlev
  end if
  nlev = 2**mlev
  dfac = 1.0/float(nlev)
  delx = srf%dx*dfac
  dely = srf%dy*dfac

  xfac = ARG2 / (1.0 - p%axy*p%axy/p%axx/p%ayy)
  xp   = xmap*sqrt(xfac/p%axx)
  yp   = ymap*sqrt(xfac/p%ayy)
!         xp    = xmap*sqrt(ARG2/p%axx)
!         yp    = ymap*sqrt(ARG2/p%ayy)

  m1 = srf%nx*nlev
  n1 = srf%ny*nlev
  j1  = int((ybar - yp - srf%ymin)/dely)
  j2  = int((ybar + yp - srf%ymin)/dely) + 1

  j1 = max0(j1,1)
  j2 = min0(j2,n1)

  lgrd = j2>=j1

  if (lgrd) then

    xp     = sqrt(ARGMAX/p%axx) * xmap
    xplus  = xbar + xp - srf%xmin
    xminus = xbar - xp - srf%xmin
    cxy  = p%axy/p%axx

    if (lter) then

      do j = j1,j2
        y  = (float(j)-0.5)*dfac
        ys = srf%ymin + y*srf%dy
        yp = (ys-ybar)/ymap
        x  = -cxy * yp * xmap
        i1 = max0( int((xminus + x)/delx)    , 1 )
        i2 = min0( int((xplus  + x)/delx) + 1, m1 )

        do i = i1,i2
          x  = (float(i)-0.5)*dfac
          xs = srf%xmin + x*srf%dx
          xp = (xs-xbar)/xmap

          if (zs < 1.e20) then

            call get_topogPrj(xs,ys,h,hx,hy)
            if (h <= zs) then
              arg  = p%axx*xp*xp + 2.*p%axy*xp*yp + p%ayy*yp*yp
              if( arg < ARGMAX )then
                zr = xnrm(1)*(xp-xr(1)) + xnrm(2)*(yp-xr(2)) &
                        + xnrm(3)*(zp-xr(3))
                zr = amax1(zr,0.)
                fac  = exp(-arg) * (1. + exp(zfac*zr))
              end if
            else
              arg = 2.*ARGMAX
            end if

          else

            arg  = p%axx*xp*xp + 2.*p%axy*xp*yp + p%ayy*yp*yp
            fac  = exp(-arg)

          end if

          if( arg < ARGMAX )then
            ccell(1) = fac*cfac(1)
            ccell(2) = fac*cfac(2)
            ccell(3) = fac*cfac(3)
            if (ccell(1) > C_CUTOFF) then
              call accum_surf(srfP,x,y,mlev,ig,ng,ccell,icell,iout)
              if (nError /= 0) then
                write(6,*) 'Error in ACCUM_SURF'
                stop
              end if
            end if
          end if

        end do
      end do

    else

      do j = j1,j2
        y  = (float(j)-0.5)*dfac
        ys = srf%ymin + y*srf%dy
        yp = (ys-ybar)/ymap
        x  = -cxy * yp * xmap
        i1 = max0( int((xminus + x)/delx)    , 1 )
        i2 = min0( int((xplus  + x)/delx) + 1, m1 )

        do i = i1,i2
          x  = (float(i)-0.5)*dfac
          xs = srf%xmin + x*srf%dx
          xp = (xs-xbar)/xmap
          arg  = p%axx*xp*xp + 2.*p%axy*xp*yp + p%ayy*yp*yp
          if( arg < ARGMAX )then
            fac  = exp(-arg)
            ccell(1) = fac*cfac(1)
            ccell(2) = fac*cfac(2)
            ccell(3) = fac*cfac(3)
            if (ccell(1) > C_CUTOFF) then
              call accum_surf(srfP,x,y,mlev,ig,ng,ccell,icell,iout)
              if (nError /= 0) then
                write(6,*) 'Error in ACCUM_SURF'
                stop
              end if
            end if
          end if
        end do
      end do

    end if

  end if
end if

return

end

!=======================================================================

subroutine z_dos(zs,p,imc,zmass,xp,yp,xr,xnrm,zfac)
use scipuff_fi
use surface_fd

implicit none

real, parameter :: ARGMAX   = 20.0
real, parameter :: ARG2     = 10.*ARGMAX
real, parameter :: C_CUTOFF = 0.0

type ( puff_str ) p

real, dimension(1)    :: zmass, xr, xnrm
real(8), dimension(7) :: asig

real :: zs, xp, yp, zfac, ccoc, vol, cfac, ccfac, slfac, ra33, zbar, zp, znrm
real :: szz, argz, zinv, deth, arg, rat, h, hx, hy, facs, args, zc, faci
real :: ccell
integer :: imc, isrf_c, isrf_cc, isrf_sl

!------ Initialize

ccoc = 0.

isrf_c  = 1
isrf_cc = 2
isrf_sl = 3

if (zs >= 1.e20) then
  vol   = pi3*sqrt(p%det)
  cfac  = p%c/vol
  ccfac = (p%cc-p%ccb)/vol
  slfac = p%si*ccfac
  ccfac = amax1( ccfac , (ccoc*cfac)**2 )
  ra33  = sqrt(pi/p%azz)
  zmass(isrf_c ) = cfac*ra33
  zmass(isrf_cc) = ccfac*ra33
  zmass(isrf_sl) = slfac*ra33
  xp = 0.0
  yp = 0.0
  return
end if

zmass(isrf_c ) = 0.
zmass(isrf_cc) = 0.
zmass(isrf_sl) = 0.

!------ Check distance from slice

zbar = p%zbar
zp   = zs - p%zbar
szz  = p%szz
argz = 0.5*zp**2/szz
if (argz > ARGMAX) return

!------ Check for Inversion location

zinv = p%zi
if (zbar < zinv .and. zs > zinv) return

!------ If Puff contributes - compute mass at zs

vol   = pi3*sqrt(p%det)
cfac  = p%c/vol
ccfac = (p%cc-p%ccb)/vol
slfac = p%si*ccfac
ccfac = amax1( ccfac , (ccoc*cfac)**2 )

deth  = p%axx*p%ayy - p%axy**2
zfac = (p%axz*p%ayy - p%ayz*p%axy)/deth
xp   = - zp*zfac
zfac = (p%ayz*p%axx - p%axz*p%axy)/deth
yp   = - zp*zfac
arg  = p%axx*xp*xp+2.*p%axy*xp*yp+2.*p%axz*xp*zp &
          + p%ayy*yp*yp+2.*p%ayz*yp*zp+p%azz*zp*zp
rat = 0.5/(p%det*deth)

if (lter) then
  call get_topogPrj(SNGL(p%xbar),SNGL(p%ybar),h,hx,hy)
  zp = zbar - h
  call get_asig(p,asig)
  call grnd_reflect(zp,asig,hx,hy,xr,xnrm,deth,znrm)
  zfac = 0.5*znrm/(p%det*deth)
  facs = 0.
else
!         deth = p%axx*p%ayy - p%axy**2
!         zfac = (p%axz*p%ayy - p%ayz*p%axy)/deth
!         xp   = - zp*zfac
!         zfac = (p%ayz*p%axx - p%axz*p%axy)/deth
!         yp   = - zp*zfac
!         arg  = p%axx*xp*xp+2.*p%axy*xp*yp+2.*p%axz*xp*zp
!     $         + p%ayy*yp*yp+2.*p%ayz*yp*zp+p%azz*zp*zp
!         rat  = 0.5/(p%det*deth)
  args = zs*zbar*rat
  facs = exp(-args)
end if

zc   = p%zc
call zi_reflect(zbar,zc,zc,zs,rat,faci)
!       write(99,*)zbar,zinv,faci,facs

ccell = exp(-arg)*(1. + faci)*(1. + facs)
zmass(isrf_c ) =  cfac*ccell
zmass(isrf_cc) = ccfac*ccell
zmass(isrf_sl) = slfac*ccell

return
end

!=======================================================================

subroutine read_all_times(pfile,nt,time,maxt)
use scipuff_fi

implicit none

character*(*) pfile

real, dimension(1) :: time
integer :: nt, maxt

open(unit=1,file=pfile,status='OLD',action="read", &
          form='unformatted',err=9000)

!------ read times

nt = 0
do while (nt < maxt)
  read(1,end=10) t,npuf
  nt = nt + 1
  time(nt) = t/3600.
end do

10      continue

close(unit=1)

return

9000    print *,'****ERROR - Opening puff file ',pfile
stop

end
