PROGRAM puff_sample
USE scipuff_fi
USE surface_fi
USE metparam_fd
USE chem_fi
USE files_fi

IMPLICIT NONE

!  This program calculates c, cc and sl*cc at discrete points from a
!  SCIPUFF .puf file (and multicomponent species for isg =-1)

SAVE

CHARACTER(80)                   :: sfile
CHARACTER(4)                    :: matname

INTEGER                         :: i,j,imat,isg,ios
INTEGER                         :: nsamp,nsp,nvar
INTEGER                         :: MAX_MC
INTEGER                         :: ID, n, nmc
REAL                            :: tx,hs,dum
REAL,DIMENSION(:,:),ALLOCATABLE :: ds,xs
LOGICAL                         :: IsAGL

CALL init_error()
CALL set_version(iversion_code)

!------ Read Input

MAX1D_MET = HUGE(1)

CALL input1(nsp,matname,IsAGL,isg,nsamp,tx)
IF( nError /= NO_ERROR )GO TO 9999

MAX_MC = 0
DO i = 1,mat_mc%nMCtype
  IF( mat_mc%type(i) == MC_CHEM )THEN
    ID  = mat_mc%ID(i)
    nmc = chemMC(ID,1)%nFast + chemMC(ID,1)%nSlow + chemMC(ID,1)%nEquilibrium
    MAX_MC = MAX_MC + nmc
  END IF
END DO
nvar = 3 + MAX_MC

ALLOCATE(ds(nvar,nsp), stat = ios)
IF (ios /= 0) THEN
  WRITE(eMessage,*)'Error allocating ds'
  WRITE(eInform,*)'Bytes requested =',nvar*nsp*4
  WRITE(eAction,*)'Number of samplers =',nsp
  GOTO 9999
END IF

ALLOCATE(xs(3,nsp), stat = ios)
IF (ios /= 0) THEN
  WRITE(eMessage,*)'Error allocating xs'
  WRITE(eInform,*)'Bytes requested =',3*nsp*4
  WRITE(eAction,*)'Number of samplers =',nsp
  GOTO 9999
END IF

lun_log = 11

OPEN(unit=lun_log,file='samppuf.log',form='UNFORMATTED', &
      IOSTAT=ios)
IF (ios /= 0) THEN
  WRITE(*,*)'Error opening samppuf log file'
  GOTO 9999
END IF

IsAGL = .TRUE.

CALL input2(xs,nsp,nsamp,sfile)
IF( nError /= NO_ERROR )GO TO 9999

!------ Materials

OPEN(unit=10,file=TRIM(sfile),IOSTAT=ios)
CLOSE(unit=10,STATUS='DELETE')

DO imat = 1,ntypm

  DO i = 1,nsp
    DO j = 1,nvar
      ds(j,i) = 0.0
    END DO
  END DO

  !------ Compute point values

  CALL get_puff_val_sam(imat,IsAGL,xs,ds,nsp,nvar)
  IF( nError /= NO_ERROR )GO TO 9999

  !------ Output points

  sfile = 'temp.dat'

  CALL write_samps(imat,xs,ds,nsp,nvar,tx,sfile)
  IF( nError /= NO_ERROR )GO TO 9999

END DO

GO TO 9998
9999  CONTINUE
WRITE(*,*)TRIM(eMessage)
WRITE(*,*)TRIM(eInform)
WRITE(*,*)'Error no.',nError

9998 CONTINUE
CALL deallocatePuffs()
DEALLOCATE(ds,xs,STAT=ios)

STOP
END

!===============================================================================

SUBROUTINE input1(ns,matname,IsAGL,isg,nsamp,tx)

USE scipuff_fi
USE met_fi
USE files_fi

IMPLICIT NONE

CHARACTER*80      :: line
CHARACTER*80      :: rfile, pfile
CHARACTER*4       :: matname
INTEGER           :: ns, nsamp, nchs, nch, nchr
INTEGER           :: i, isg, ios
REAL              :: trstsav, tx, time
LOGICAL           :: IsAGL

!------ Puff  file

WRITE(6,*)' '
WRITE(6,*)'SCIPUFF Dos Program - Sampler values from Puff data'
WRITE(6,*)' '

WRITE(6,*) '***Note:'
WRITE(6,*) 'Code will not provide proper values for gas-phase'
WRITE(6,*) 'steady-state species or aerosol equilibrium species'
WRITE(6,*)' '

CALL get_file('Puff',pfile,nch)
WRITE(6,*)'pfile = ',pfile

!------ Read project file

nch = LEN_TRIM(pfile)
file_prj = pfile(1:nch-3)//'prj'
CALL read_prj
IF (nError == VN_ERROR) CALL init_error
IF (nError /= NO_ERROR) GO TO 9999
IF (iversion < 1300) THEN
  eMessage = 'Unable to read puff file'
  eAction  = 'Version less than 1.3 files no longer supported'
  GO TO 9999
END IF

GO TO 9999

WRITE(6,100)
100     format(' Enter time wanted : ',$)
READ(5,*,IOSTAT=ios) time
IF (ios /= 0) THEN
  nError = RD_ERROR
  WRITE(eMessage,*) 'Error reading time'
  GO TO 9999
END IF
WRITE(6,'(/,"Time = ",F10.2)')time

!------ Read puff file for given time

CALL read_puff_util(pfile(1:nch),time,tx)
IF (nError /= NO_ERROR) GO TO 9999

WRITE(6,110)
110     format(' Enter material name : ',$)
READ(5,111,IOSTAT=ios) line
111     format(a)
IF (ios /= 0) THEN
  nError = RD_ERROR
  WRITE(eMessage,*) 'Error reading material name'
  GO TO 9999
END IF
matname = TRIM(ADJUSTL(line))
CALL cupper(matname)
WRITE(6,'(/,"Material Name = ",a)')matname

!------ Check material
DO i = 1,ntypm
  IF (material(i)%cmat == matname) THEN
    EXIT
  END IF
  IF (i == ntypm) THEN
    nError = UK_ERROR
    WRITE(eMessage,*)'Could not find material ',matname
    GO TO 9999
  END IF
END DO

WRITE(6,120)
120     format(' Enter Material Subgroup (0=total) : ',$)
READ(5,*,IOSTAT=ios) isg
IF (ios /= 0) THEN
  nError = RD_ERROR
  WRITE(eMessage,*) 'Error reading material subgroup'
  GO TO 9999
END IF
WRITE(6,'(/,"Material Subgrp = ",i4)')isg

WRITE(6,'(a,$)')' Enter reference for sampler heights (AGL or MSL) : '
READ(5,111,IOSTAT=ios) line
IF (ios /= 0) THEN
  nError = RD_ERROR
  WRITE(eMessage,*) 'Error reading reference for sampler heights'
  GO TO 9999
END IF
line = ADJUSTL(line)
CALL cupper(line)
IF (TRIM(line) == 'MSL') THEN
  IsAGL = .false.
  WRITE(6,'(/,"All heights are measured from sea level ")')
ELSE
  IsAGL = .true.
  WRITE(6,'(/,"All heights are above ground level ")')
ENDIF

!------ Get sampler locations

WRITE(6,6000)
6000 FORMAT(/'> Name of sampler file or press return to enter locations from',&
          ' terminal'/)
CALL get_file('Enter name of sampler ',rfile,nchr)

IF (rfile == ' ') THEN
  nsamp = 5
  WRITE(6,'(a,$)')' Enter number of sampler locations :'
  READ(nsamp,*,IOSTAT=ios)ns
  IF (ios /= 0) THEN
    nError = RD_ERROR
    WRITE(eMessage,*) 'Error reading sampler locations'
    GO TO 9999
  END IF
  ns = MAX(1,ns)
  WRITE(6,6001)ns
  6001 FORMAT('Will read',i4,' sampler locations from console > x y z')
ELSE
  OPEN(unit=10,file=rfile,IOSTAT=ios)
  IF (ios /= 0) THEN
    WRITE(6,*)'Error opening Sampler file - enter from terminal'
    nsamp = 5
    WRITE(6,'(a,$)')'Enter number of sampler locations (ns):'
    READ(nsamp,*,IOSTAT=ios)ns
    IF (ios /= 0) THEN
      nError = RD_ERROR
      WRITE(eMessage,*) 'Error reading number of samplers'
      GO TO 9999
    END IF
    ns = MAX(1,ns)
    WRITE(6,6002)ns
    6002 FORMAT(/'Reading',i4,' sampler locations from console')
  ELSE
    nsamp = 10
  END IF
  !
! number of samplers in sampler file
  !
  ns=0
  READ(nsamp,*,IOSTAT=ios)
  DO
    READ(nsamp,*,IOSTAT=ios)
    IF( ios /= 0 )EXIT
    ns = ns + 1
  END DO
  IF (ns <= 0) THEN
    nError = RD_ERROR
    WRITE(eMessage,*) 'Error reading number of samplers '
    WRITE(eInform,*)'Sampler file name = ',TRIM(rfile)
    GO TO 9999
  ELSE
    ns = MAX(1,ns)
    WRITE(6,6003)ns,TRIM(rfile)
    6003 FORMAT(/'Will read',i4,' sampler locations from file ',a/)
  END IF
END IF

9999 CONTINUE

RETURN

END

!===============================================================================

SUBROUTINE input2(xs,ns,nsamp,sfile)

USE scipuff_fi
USE files_fi

IMPLICIT NONE

CHARACTER*(*)     :: sfile

INTEGER               :: i, j, ios, ns, nsamp, nchs
REAL, DIMENSION(3,ns) :: xs

IF(nsamp /= 5)THEN
  REWIND(nsamp,IOSTAT=ios)
  IF (ios /= 0) THEN
    nError = RD_ERROR
    WRITE(eMessage,*) 'Error rewinding sampler locations file'
    GO TO 9999
  END IF
END IF

DO j = 1,ns
  IF(nsamp==5)THEN
    WRITE(6,6000)j
    6000 FORMAT(i4,' > ',$)
  ENDIF
  READ(nsamp,*,IOSTAT=ios) (xs(i,j),i=1,3)
  IF (ios /= 0) THEN
    nError = RD_ERROR
    WRITE(eMessage,*) 'Error reading sampler locations'
    GO TO 9999
  END IF
END DO

IF(nsamp /= 5)CLOSE(unit=nsamp)

!------ Output file

CALL get_file('Output',sfile,nchs)
IF (nchs == 0) sfile = ' '
WRITE(6,*)'Output file = ',sfile


9999 CONTINUE

RETURN
END

!===============================================================================

SUBROUTINE write_samps(imat,xs,ds,ns,nvar,tx,sfile)

USE scipuff_fi
USE met_fi
USE chem_fi

IMPLICIT NONE

CHARACTER*(*)                          :: sfile
INTEGER                                :: imat,ns, nvar
REAL                                   :: xs(3,ns),ds(nvar,ns),tx

CHARACTER*4, DIMENSION(:),ALLOCATABLE  :: varnm, xnm
INTEGER                                :: i, ii, j, ir, iA, iB, k
INTEGER                                :: nout, nch, ios
INTEGER                                :: MAX_MC, ID, nmc, n

MAX_MC = 0
DO i = 1,mat_mc%nMCtype
  IF( mat_mc%type(i) == MC_CHEM )THEN
    ID  = mat_mc%ID(i)
    nmc = chemMC(ID,1)%nFast + chemMC(ID,1)%nSlow + chemMC(ID,1)%nEquilibrium
    MAX_MC = MAX_MC + nmc
  END IF
END DO
nvar = 3 + MAX_MC
ALLOCATE(xnm(3),varnm(nvar),STAT=ios )
IF( ios /= 0 )THEN
  nError = RD_ERROR
  WRITE(eMessage,*) 'Error allocating puff array', varnm
  GO TO 9999
END IF

!------ Output surface date
xnm(1)   = 'X   '
xnm(2)   = 'Y   '
xnm(3)   = 'Z   '
varnm(1) = 'C   '
varnm(2) = 'V   '
varnm(3) = 'S   '
nmc = 2
DO i = 1,mat_mc%nMCtype
  IF( mat_mc%type(i) == MC_CHEM )THEN
    ID = mat_mc%ID(i)
    n  = chemMC(ID,1)%nFast + chemMC(ID,1)%nSlow + chemMC(ID,1)%nEquilibrium
    DO j = 1,n
      varnm(nmc+j) = chemMC(ID,1)%species(j)%name
    END DO
    nmc = nmc + n
  END IF
END DO

IF(sfile == ' ')THEN
  nout = 6
ELSE
  nout = 78
  nch = LEN_TRIM(sfile)
  OPEN(unit=nout,file=sfile(1:nch),IOSTAT=ios,POSITION='append')
  IF(ios /= 0)THEN
    WRITE(6,*)'Error opening output file'
    nout = 6
  END IF
END IF

!----write data to an ascii file
WRITE(nout,100) (xnm(i),i=1,3),(varnm(i), i=1,nvar)
DO j = 1, ns
  WRITE(nout,105)(xs(i,j),i=1,3),(ds(i,j),i=1,nvar)
END DO
100    FORMAT (100(2x,A14))
105    FORMAT (100(1pe14.6,2x))

IF(nout /= 6)CLOSE(unit=nout,IOSTAT=ios)

IF( ALLOCATED(varnm) )DEALLOCATE(varnm,xnm,STAT=ios)

9999 CONTINUE

RETURN
END

