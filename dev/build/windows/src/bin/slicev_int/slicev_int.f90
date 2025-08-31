PROGRAM slicev_int
use error_fi
use files_fi
use scipuff_fi
use surface_fi
use grdstr
use vert_mod
implicit none

!  This program calculates c, cc and sl*cc on a 2d vertical slice
!  Quantities are integrated along y direction

character*80 pfile,sfile
REAL, DIMENSION(2,2) ::  slice
REAL, DIMENSION(2,2) :: hslice
INTEGER, DIMENSION(2) :: nres
REAL, DIMENSION(2) :: vext
CHARACTER(4), DIMENSION(5) :: name_slicev
REAL :: time,zmin,zmx,dummy
integer :: isrf_c,isrf_cc,isrf_sl,ios
integer :: nxx,nzz,itys,itye,imc,nch
integer, external :: nblank, allocatePuffs

MAXPUF = 20000
MAXSG = 25000

call init_error()

call set_version(iversion_code)

!------ Read Input
call input_int(pfile,time,hslice,sfile,nxx,zmin,zmx,nzz,itys,itye,imc)
if (nError /= NO_ERROR) go to 9998

nres(1) = nxx
nres(2) = nzz
vext(1) = zmin
vext(2) = zmx
!itys = 1
!itye = 1

isrf_c  = 1
isrf_cc = 2
isrf_sl = 3
name_slicev(isrf_c ) = 'C'
name_slicev(isrf_cc) = 'CC'
name_slicev(isrf_sl) = 'SL'
srfdepxxx%nvar  = 3
srfdepxxx%nvart = 3
srfdepxxx%nunit = 1
srfdepxxx%record = 1
!srfdepxxx%ncells = nhg*nvg

srfdepxxx%ipnam = 0
srfdepxxx%ipdat = 0
srfdepxxx%ipgrd = 1

!------ Read Puff File

nch = nblank(pfile)
call read_puff_util(pfile(1:nch),time,dummy)

!------ Create Vertical Slice

call set_slice(hslice,nres)
call create_slicev_int(hslice,slice,vext,nres,itys,itye,imc,srfdepxxx)
if (nError /= NO_ERROR) go to 9999

!------ Output

nch = nblank(sfile)
call output_slice_int(sfile(1:nch),srfdepxxx,name_slicev)

!------ Done - Close file

close(unit=srfdepxxx%nunit)

9000 CONTINUE
CALL deallocatePuffs()

stop
9998 continue
write(6,*)'error in input subroutine'
GOTO 9000
9999 continue
write(6,*)'error in create_slice subroutine'
goto 9000
end

!===============================================================================

subroutine input_int(pfile,time,sl,sfile,nxx,zmin,zmx,nzz,itys,itye,imc)
use scipuff_fi
use surface_fi
use files_fi
use UtilMtlAux
implicit none

character*(*)        :: pfile,sfile
real, dimension(2,2) :: sl
logical              :: IsLiquid
integer              :: nxx,nzz,nch
integer              :: i,itys,itye,nspec,imc
integer              :: imat,isg,nsg
real                 :: time,zmin, zmx
integer, external    :: nblank

call get_file('Puff',pfile,nch)
write(6,*)TRIM(pfile)

write(6,100)
100 format(' Enter time : ',$)
read(5,*) time
write(6,*)time

write(6,110)
110 format(' Enter slice end points (x1,y1 - x2,y2) : ',$)
read(5,*)sl(1,1),sl(2,1),sl(1,2),sl(2,2)
write(6,*)sl(1,1),sl(2,1),sl(1,2),sl(2,2)

call get_file('Enter name of slice',sfile,nch)
if (nch == 0) stop
write(6,*)TRIM(sfile)

write(6,120)
120     format(' Enter (zmin,zmax) : ',$)
read(5,*)zmin,zmx
write(6,*)zmin,zmx

write(6,130)
130     format(' m0,n0 : ',$)
read(5,*)nxx,nzz
write(6,*)nxx,nzz

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
write(6,*)imat,isg,imc
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
                     max0(1,GetSubgroups(material(imat),mat_aux))
    if (IsLiquid(material(imat)%icls)) itye = itye + 1
  end if
else
  itys = 1
  itye = ntypp
end if

write(6,*)'Slice output for puff types',itys,' to',itye

9999 continue

return

end

!===============================================================================
subroutine output_slice_int(sfile,srf,name_slicev)
use scipuff_fi
use surface_fi
use grdstr
use vert_mod
implicit none
integer nvs, ngrds
integer i,ii,ierror,itm,ir,ivar,j,j1,nsrf,ntmp
real tmp,hminx,dhgx

character*(*) sfile
type (grid_str) srf
CHARACTER(4), DIMENSION(5) :: name_slicev
!------ Create surface file

nsrf = srf%nunit
open(unit=nsrf, file=sfile, status='new', access='DIRECT', &
          recl=128*4, iostat=ierror)
if(ierror /= 0)then
  write(6,*) sfile,' ',ierror
  stop 'ERROR OPENING SURFACE FILE'
end if

!------ Output surface data

itm = 0
tmp = 0.
ir  = srf%record
nvs = srf%nvart
!       nsrf = srf%nunit
ngrds = srf%ncells
write(6,*) ngrds,' cells'


hminx = 0.
dhgx  = 1./float(nhg)

write(nsrf,rec=ir) tmp, ngrds, nhg, -nvg, hminx, vmin, &
             dhgx, dvg, nvs, (name_slicev(srf%ipnam+i),i=1,nvs), iversion

ir = ir + 1
do ii = 1,ngrds,128
  j1 = min0(ii+127,ngrds)
  write(nsrf,rec=ir) (srfgrd(j,srf%ipgrd), j=ii,j1)
  ir = ir + 1
end do
do ivar = 1,nvs
  do ii = 1,ngrds,128
    j1 = min0(ii+127,ngrds)
    write(nsrf,rec=ir) (srfdat(j,srf%ipdat+ivar), j=ii,j1)
    ir = ir + 1
  end do
end do

ntmp  = 0
srf%record = ir
write(nsrf,rec=ir) tmp, ntmp, nhg, -nvg, hminx, vmin, &
             dhgx, dvg, nvs, (name_slicev(srf%ipnam+i),i=1,nvs), iversion

return
end
