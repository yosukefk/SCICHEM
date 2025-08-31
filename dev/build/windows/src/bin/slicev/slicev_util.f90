PROGRAM slicev
USE scipuff_fi
USE surface_fi
USE met_fi
USE grdstr
IMPLICIT NONE

!  This program calculates c, cc and sl*cc on a 2d adaptive grid from a
!  SCIPUFF puf file


CHARACTER*80          :: pfile,sfile
INTEGER, DIMENSION(2) :: nres
INTEGER               :: nxx, nzz, nch, imc
INTEGER               :: itys, itye, isrf_c, isrf_cc, isrf_sl, ios
REAL, DIMENSION(2,2)  :: slice, hslice
REAL, DIMENSION(2)    :: vext
REAL                  :: time, zmin, zmx, dummy

INTEGER, EXTERNAL     :: nblank, allocatePuffs


MAX1D_MET = HUGE(0)
MAXPUF    = 20000
MAXSG     = 25000


CALL init_error()

CALL set_version(iversion_code)

nch = 3
ALLOCATE(srfnam(nch),STAT=ios)
IF( ios /= 0 )THEN
  nError = UK_ERROR
  eRoutine = 'slicev'
  eMessage = 'Error allocating srfnam array'
  WRITE(eInform,'(A,I10,A,I8)') 'Requested size =',nch,' : IOS =',ios
  GOTO 9999
END IF

!------ Read Input

CALL input_slicev(pfile,time,hslice,sfile,nxx,zmin,zmx,nzz,itys,itye,imc)

IF (nError /= NO_ERROR) GOTO 9999

nres(1) = nxx
nres(2) = nzz
vext(1) = zmin
vext(2) = zmx
!       itys = 1
!       itye = 1

isrf_c  = 1
isrf_cc = 2
isrf_sl = 3
srfnam(isrf_c ) = 'C'
srfnam(isrf_cc) = 'CC'
srfnam(isrf_sl) = 'SL'
srfdepxxx%nvar  = 3
srfdepxxx%nvart = 3
srfdepxxx%nunit = 1
srfdepxxx%record = 1
!       srfdepxxx%ncells = nhg*nvg

srfdepxxx%ipnam = 0
srfdepxxx%ipdat = 0
srfdepxxx%ipgrd = 1

!------ Read Puff File

nch = nblank(pfile)
CALL read_puff_util(pfile(1:nch),time,dummy)

!------ Create Vertical Slice

CALL set_slice(hslice,nres)
CALL create_slicev(hslice,slice,vext,nres,itys,itye)
IF (nError /= NO_ERROR) GOTO 9999

!------ Output

nch = nblank(sfile)
CALL output_slice(sfile(1:nch))

!------ Done - Close file

CLOSE(unit=srfdepxxx%nunit)

CALL deallocatePuffs()
DEALLOCATE(srfnam)
STOP

9999    CONTINUE

WRITE(6,*)'Error in slicev program'
STOP
END

!===============================================================================

SUBROUTINE input_slicev(pfile,time,sl,sfile,nxx,zmin,zmx,nzz,itys,itye,imc)
USE scipuff_fi
USE surface_fi
USE files_fi
USE UtilMtlAux

IMPLICIT NONE

CHARACTER*(*)        :: pfile,sfile
REAL, DIMENSION(2,2) :: sl
LOGICAL              :: IsLiquid
INTEGER              :: nxx, nzz, nch
INTEGER              :: i, itys, itye, nspec, imc
INTEGER              :: imat, isg, nsg
REAL                 :: time, zmin, zmx
INTEGER, EXTERNAL    :: nblank

CALL get_file('Puff',pfile,nch)
WRITE(6,*)TRIM(pfile)

WRITE(6,100)
100  FORMAT(' Enter time : ',$)
READ(5,*) time
WRITE(6,*)time

WRITE(6,110)
110  FORMAT(' Enter slice end points (x1,y1 - x2,y2) : ',$)
READ(5,*)sl(1,1),sl(2,1),sl(1,2),sl(2,2)
WRITE(6,*)sl(1,1),sl(2,1),sl(1,2),sl(2,2)

CALL get_file('Enter name of slice',sfile,nch)
IF (nch == 0) STOP
WRITE(6,*)TRIM(sfile)

WRITE(6,120)
120  FORMAT(' Enter (zmin,zmax) : ',$)
READ(5,*)zmin,zmx
WRITE(6,*)zmin,zmx


WRITE(6,140)
140     FORMAT(' m0,n0 : ',$)
READ(5,*)nxx,nzz
WRITE(6,*)nxx,nzz

!nxx=10
!nzz=10

!------ Read Puff File Commons

nch = nblank(pfile)
lun_prj = 1
file_prj = pfile(1:nch-3)//'prj'

CALL read_prj

IF (nError == VN_ERROR) THEN
  nError = NO_ERROR
ELSE IF (nError /= NO_ERROR) THEN
  GOTO 9999
END IF

!------ Materials

WRITE(6,6000)
6000 FORMAT(' Materials List : ',/,&
          ' ID   :  Name  -   No. Subgroups')
DO i = 1,ntypm
  nspec=0
  nsg=GetSubgroups(material(i),mat_aux)
  if(IsLiquid(material(i)%icls)) nsg=2
  WRITE(6,*)"Enter ",i," for "//TRIM(material(i)%cmat)//" - ", &
             nsg," - ",nspec
END DO

WRITE(6,200)
200 FORMAT(' Matl ID, Subgrp No.(0=total), Mul-comp (0=no) : ',$)
READ(5,*)imat,isg
WRITE(6,*)imat,isg

!imc=min0(imc,nspec)

IF(imat > 0)THEN
  IF(isg > 0)THEN
    itys = material(imat)%ioffp + isg
    itye = itys
    !IF(IsLiquid(material(imat)%icls) .AND. isg == 2)THEN
      !itye = GetSubgroups(material(imat),mat_aux) + 1
    !END IF
  ELSE
    itys = material(imat)%ioffp + 1
    itye = material(imat)%ioffp + GetSubgroups(material(imat),mat_aux) !&
                        ! max0(1,GetSubgroups(material(imat),mat_aux))
   ! IF(IsLiquid(material(imat)%icls)) itye = itye + 1
  END IF
ELSE
  itys = 1
  itye = ntypp
END IF

WRITE(6,*)'Slice output for puff types',itys,' to',itye

9999    CONTINUE

RETURN

END


!===============================================================================

SUBROUTINE output_slice(sfile)
USE scipuff_fi
USE surface_fi
USE surface_fd
USE grdstr
USE vert_mod

IMPLICIT NONE

INTEGER       :: nsrf, nvs, ngrds, ntmp
INTEGER       :: ierror, itm, ir, i, ii, j1, j, ivar
REAL          :: tmp
CHARACTER*(*) :: sfile

!------ Create surface file

nsrf = srfdepxxx%nunit
OPEN(unit=nsrf, file=sfile, status='NEW', access='DIRECT', &
          recl=128*4, iostat=ierror)
IF(ierror /= 0)THEN
  WRITE(*,*)sfile,' ',ierror
  STOP 'ERROR OPENING SURFACE FILE'
END IF

!------ Output surface DATA

itm = 0
tmp = 0.
ir  = srfdepxxx%record
nvs = srfdepxxx%nvart
ngrds = srfdepxxx%ncells
WRITE(*,*)ngrds,' cells'

!WRITE(nsrf,rec=ir) tmp, ngrds, nhg, -nvg, hmin, vmin, &
WRITE(nsrf,rec=ir) tmp, ngrds, nhg, -nvg, xmin, vmin, &
             dhg, dvg, nvs, (srfnam(srfdepxxx%ipnam+i),i=1,nvs), iversion

ir = ir + 1
DO ii = 1,ngrds,128
  j1 = min0(ii+127,ngrds)
  WRITE(nsrf,rec=ir) (srfgrd(j,srfdepxxx%ipgrd), j=ii,j1)
  ir = ir + 1
END DO
DO ivar = 1,nvs
  DO ii = 1,ngrds,128
    j1 = min0(ii+127,ngrds)
    WRITE(nsrf,rec=ir) (srfdat(j,srfdepxxx%ipdat+ivar), j=ii,j1)
    ir = ir + 1
  END DO
END DO

ntmp  = 0
srfdepxxx%record = ir
WRITE(nsrf,rec=ir) tmp, ntmp, nx, -nvg, hmin, vmin, &
             dhg, dvg, nvs, (srfnam(srfdepxxx%ipnam+i),i=1,nvs), iversion

RETURN

END

!===============================================================================

SUBROUTINE zi_sv_reflect(zbar,zinv,zs,rat,faci)
IMPLICIT NONE

REAL    :: zbar, zinv, zs, rat, faci, arg

!------ Inversion reflection factor

IF( zbar > zinv )THEN
  faci = 0.
ELSE
  IF(zs > zinv)THEN
    faci = -1.
  ELSE
    arg = (zinv-zs)*(zinv-zbar)*rat
    faci = exp(-arg)
  END IF
END IF

RETURN
END

!=======================================================================

SUBROUTINE accum_surf(x,y,lgrid,cgrid,nv,ccell,mlev,ncell,m0,MAXG)
IMPLICIT NONE

INTEGER                 :: ix, iy, icell, ilev, iv
INTEGER                 :: nv, mlev, ncell, m0, maxg
INTEGER, DIMENSION(1)   :: lgrid
REAL, DIMENSION(MAXG,1) :: cgrid
REAL, DIMENSION(1)      :: ccell
REAL                    :: x, y, xc, yc


xc = x
yc = y

ix = int(xc)
iy = int(yc)
icell = iy*m0 + ix + 1

DO ilev = 1,mlev

  IF (lgrid(icell) == 0) THEN
    CALL accum_cell(icell,lgrid,cgrid,nv,ncell,MAXG)
    IF (ncell > MAXG) THEN
      WRITE(*,*) 'too many cells'
      STOP
    END IF
  END IF

  xc = xc - float(ix)
  xc = xc + xc
  ix = int(xc)

  icell = lgrid(icell) + ix

END DO

DO iv = 1,nv
  cgrid(icell,iv) = cgrid(icell,iv) + ccell(iv)
END DO

RETURN
END

