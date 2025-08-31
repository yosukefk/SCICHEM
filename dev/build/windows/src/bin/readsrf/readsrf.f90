MODULE readsrf_mod

  INTEGER,PARAMETER :: MODE_BAD   = -1
  INTEGER,PARAMETER :: MODE_BRIEF = 0
  INTEGER,PARAMETER :: MODE_FULL  = 1
  INTEGER,PARAMETER :: MODE_INT   = 2
  INTEGER,PARAMETER :: MODE_DUMP  = 3
  INTEGER,PARAMETER :: MODE_CELL  = 4

  INTEGER,PARAMETER :: SAGLUN = 10

  INTEGER, PARAMETER :: MAXL=25

  INTEGER, DIMENSION(:), ALLOCATABLE :: ngrd

  REAL, DIMENSION(:,:), ALLOCATABLE :: cmax
  REAL, DIMENSION(:,:), ALLOCATABLE :: cmin
  REAL, DIMENSION(:,:), ALLOCATABLE :: cint
  REAL, DIMENSION(:), ALLOCATABLE :: cintt
END MODULE readsrf_mod

PROGRAM readsrf

USE sagdef_fd
USE sagstr_fd
USE PtrGrdStrItf
USE sagerr_fd
USE readsrf_mod

IMPLICIT NONE

REAL    time

INTEGER grdI
INTEGER irv
INTEGER mode
INTEGER outLun

CHARACTER(128) filename
CHARACTER(128) dumpfile
CHARACTER(128) line
CHARACTER(1)   answer

INTEGER, EXTERNAL :: SAG_InitList
INTEGER, EXTERNAL :: SAG_InitDef
INTEGER, EXTERNAL :: SAG_NewGrdStr
INTEGER, EXTERNAL :: SAG_InitGridID
INTEGER, EXTERNAL :: SAG_OpenID
INTEGER, EXTERNAL :: SAG_RmvGrdStr
INTEGER, EXTERNAL :: SAG_ClearList
INTEGER, EXTERNAL :: dumpHeader
INTEGER, EXTERNAL :: dumpBreak

1000 FORMAT(/,'**** ERROR ****')
1001 FORMAT(4X,A)
2000 FORMAT(/,A,$)
2001 FORMAT(A)

!----- Initialize SAG Library

!CALL oldstuff()

irv  = SAG_InitDef()
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error initializing SAG library'
  STOP
END IF
irv  = SAG_InitList()
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error initializing SAG list'
  STOP
END IF
grdI = -1

!----- Main loop

MainLoop: DO WHILE (.TRUE.)

  WRITE(*,2000)'SAG file : '
  READ(*,2001)filename
  filename = ADJUSTL(filename)

  IF( LEN_TRIM(filename) <= 0 )THEN
    EXIT
  END IF

!------ Get new SAG grid structure

  irv = SAG_NewGrdStr( grdI )
  IF( irv /= SAG_OK )THEN
    WRITE(*,1000)
    WRITE(*,1001)'Error creating surface grid'
    CYCLE
  END IF

!------ Output file header

  irv = dumpHeader( filename, grdI, 6 )
  IF( irv /= SAG_OK )THEN
    CYCLE
  END IF

!------ Get output mode

  mode = MODE_BAD
  outLun = 6
  DO WHILE( mode==MODE_BAD )
    WRITE(*,2000)'Mode (H)elp : '
    READ(*,2001)line
    line = ADJUSTL(line)
    answer = line(1:1)
    CALL CUPPER(answer)
    SELECT CASE (answer)
      CASE ('B')
        mode = MODE_BRIEF
      CASE ('F')
        mode = MODE_FULL
      CASE ('I')
        mode = MODE_INT
      CASE ('D')
        mode = MODE_DUMP
        irv = -1
        outLun = 12
        DO WHILE ( irv /= 0 )
          WRITE(*,2000)'Dumpfile : '
          READ(*,2001)dumpfile
          dumpfile = ADJUSTL(dumpfile)
          IF( LEN_TRIM(dumpfile) <= 0 )dumpfile = 'dump.tmp'
          OPEN(UNIT=outLun,FILE=dumpfile,STATUS='UNKNOWN',IOSTAT=irv)
          IF( irv /= 0 )THEN
            WRITE(*,*)'Error opening dumpfile with iostat = ',irv
          END IF
        END DO
      CASE ('C')
        mode = MODE_CELL
      CASE ('E')
        EXIT MainLoop
      CASE ('N')
        CYCLE MainLoop
      CASE ('H')
        WRITE(*,'(/,A)')'Available modes are (B)rief,(F)ull,(I)ntegral,(D)ump,(E)xit,(N)ewFile,(H)elp,(C)ell'
      CASE DEFAULT
        WRITE(*,'(/,A)')'Invalid mode'
        WRITE(*,'(A)')'Available modes are (B)rief,(F)ull,(I)ntegral,(D)ump,(E)xit,(N)ewFile,(H)elp,(C)ell'
    END SELECT
  END DO

!------ Get output time

  WRITE(*,2000)'Time (-1=all) : '
  READ(*,*)time

  irv = dumpBreak( mode, filename, time, grdI, outlun )

END DO MainLoop

irv  = SAG_ClearList()
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error exiting SAG library'
END IF

STOP

END

!======================================================================

INTEGER FUNCTION dumpHeader( filename, grdI, lun )

USE sagdef_fd
USE sagstr_fd
USE PtrGrdStrItf
USE sagerr_fd
USE readsrf_mod

IMPLICIT NONE

CHARACTER(*), INTENT(IN) :: filename
INTEGER,      INTENT(IN) :: grdI
INTEGER,      INTENT(IN) :: lun

INTEGER irv
INTEGER i
INTEGER j

TYPE( SAGgrid_str ), POINTER :: grd

INTEGER, EXTERNAL :: SAG_InitGridID
INTEGER, EXTERNAL :: SAG_OpenID
INTEGER, EXTERNAL :: SAG_CloseID
INTEGER, EXTERNAL :: SAG_FreeGridID
INTEGER, EXTERNAL :: SAG_ReadHeaderID

1000 FORMAT(/,'**** ERROR ****')
1001 FORMAT(4X,A)

!------ Initialize return

dumpHeader = SAG_ERROR

!------ Initialize timebreak SAG structure associated with file

irv = SAG_InitGridID(filename,SAGLUN,SAG_GRID_BOTH,0,0,0,grdI)
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error initializing SAG surface grid'
  WRITE(*,1001)'File='//TRIM(filename)
  GOTO 9999
END IF

!------ Open surface file; read file header

irv = SAG_OpenID( grdI )
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error opening SAG file'
  WRITE(*,1001)'File='//TRIM(filename)
  GOTO 9999
END IF

!------ Associate "local" grid structure pointer

grd => SAG_PtrGrdStr( grdI )

!------ Read first header

irv = SAG_ReadHeaderID( grdI )
IF( irv == SAG_ERROR )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error reading SAG file header'
  WRITE(*,1001)'File='//TRIM(grd%file)
  GOTO 9999
END IF

!------ Dump file header data

WRITE(lun,*)'File name    = ',TRIM(grd%file)
WRITE(lun,*)'File version =',grd%version
WRITE(lun,*)'File type    =',grd%type
WRITE(lun,*)'No. Blocks   =',grd%nblk
WRITE(lun,*)'No. AuxBlocks=',grd%naux
WRITE(lun,*)'No. Variables=',grd%nvart

DO i = 1,grd%nblk
  WRITE(lun,'(1X,A,I3,A,I2,A,I2,A)') &
       'Block ',i, &
       ' : Fields=',grd%ipblk(i)%nfld, &
       ' : Aux=',grd%ipblk(i)%iaux, &
       ' : Name='//TRIM(grd%ipblk(i)%name)
  DO j = 1,grd%ipblk(i)%nfld
    WRITE(lun,'(4x,A,I2,A)')'Field ',j,' : Name='//TRIM(grd%ipblk(i)%fldnam(j))
  END DO
END DO

!------ Close surface file

irv = SAG_CloseID( grdI )
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error closing SAG file'
  WRITE(*,1001)'File='//TRIM(filename)
  GOTO 9999
END IF

!------ Remove SAG grid structure

irv = SAG_FreeGridID( grdI )
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error removing surface grid'
  GOTO 9999
END IF

!------ Set return value

dumpHeader = SAG_OK

9999 CONTINUE

RETURN
END

!======================================================================

INTEGER FUNCTION dumpBreak( mode, filename, time, grdI, lun )

USE sagdef_fd
USE sagstr_fd
USE PtrGrdStrItf
USE sagerr_fd
USE readsrf_mod

IMPLICIT NONE

INTEGER,      INTENT(IN) :: mode
CHARACTER(*), INTENT(IN) :: filename
REAL,         INTENT(IN) :: time
INTEGER,      INTENT(IN) :: grdI
INTEGER,      INTENT(IN) :: lun

INTEGER irv, cellID

CHARACTER(16),DIMENSION(1) :: dummy

INTEGER, EXTERNAL :: SAG_ReinitGridID
INTEGER, EXTERNAL :: SAG_InitGridID
INTEGER, EXTERNAL :: SAG_ReadBreakID
INTEGER, EXTERNAL :: SAG_ReadNextBreakID
INTEGER, EXTERNAL :: SAG_OpenID
INTEGER, EXTERNAL :: SAG_FreeGridID
INTEGER, EXTERNAL :: dumpOutput

1000 FORMAT(/,'**** ERROR ****')
1001 FORMAT(4X,A)
2000 FORMAT(/,A,$)
3000 FORMAT(/, '  irec   time   ncell    nc      naux   m0  n0  mx                    domain',/, &
               ' ====== ====== ======= ======= ======= === === === ',47('='))

!------ Initialize return

dumpBreak = SAG_ERROR

!------ Write banner

IF( mode == MODE_BRIEF )THEN ! .OR. mode == MODE_INT )THEN
  WRITE(*,3000)
END IF

!------ Initialize timebreak SAG structure associated with file

irv = SAG_InitGridID(filename,SAGLUN,SAG_GRID_BOTH,0,0,0,grdI)
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error initializing SAG surface grid'
  WRITE(*,1001)'File='//TRIM(filename)
  GOTO 9999
END IF

!------ Read desired(first) break

irv = SAG_ReadBreakID(grdI,time,-1,dummy)
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error reading SAG file'
  WRITE(*,1001)'File='//TRIM(filename)
  GOTO 9999
END IF

DO

!------ Get cellID

  IF( mode == MODE_CELL )THEN
    WRITE(*,2000)'Cell ID (0=Exit): '
    READ(*,*)cellID
    IF( cellID <= 0 )EXIT
  END IF

!------ Output

  irv = dumpOutput( mode, grdI, cellID, lun )
  IF( irv /= SAG_OK )GOTO 9999

!------  Read additional breaks

  IF( time < 0.0 )THEN

    DO WHILE( .TRUE. )

!------ Reinitialize grid structure

      irv = SAG_ReinitGridID(0,0,0,grdI)
      IF( irv /= SAG_OK )THEN
        WRITE(*,1000)
        WRITE(*,1001)'Error reinitializing SAG grid'
        WRITE(*,1001)'File='//TRIM(filename)
        GOTO 9999
      END IF

!------ Read desired(first) break

      irv = SAG_ReadNextBreakID(grdI,-1,dummy)
      IF( irv == SAG_EOF )THEN
        EXIT
      ELSE IF( irv /= SAG_OK )THEN
        WRITE(*,1000)
        WRITE(*,1001)'Error reading SAG file'
        WRITE(*,1001)'File='//TRIM(filename)
        GOTO 9999
      END IF

!------ Output

      irv = dumpOutput( mode, grdI, cellID, lun )
      IF( irv /= SAG_OK )GOTO 9999

    END DO

  END IF

  IF( mode /= MODE_CELL )EXIT

END DO

!------ Set return value

dumpBreak = SAG_OK

!------ Prepare to exit

9999 CONTINUE

!------ Remove SAG grid structure

irv = SAG_FreeGridID( grdI )
IF( irv /= SAG_OK )THEN
  WRITE(*,1000)
  WRITE(*,1001)'Error removing surface grid'
  GOTO 9999
END IF

RETURN
END

!======================================================================

INTEGER FUNCTION dumpOutput( mode, grdI,cellID,lun )

USE sagdef_fd
USE sagstr_fd
USE PtrGrdStrItf
USE sagerr_fd
USE readsrf_mod

IMPLICIT NONE

INTEGER, INTENT(IN) :: mode
INTEGER, INTENT(IN) :: grdI
INTEGER, INTENT(IN) :: cellID
INTEGER, INTENT(IN) :: lun

INTEGER i, ii, j, irv, nc, naux
LOGICAL hasAux

INTEGER, EXTERNAL :: dumpOutputLev

TYPE( SAGgrid_str ), POINTER :: grd


3100 FORMAT(i7,f7.2,3i8,2i4,i4,' (',1pe10.3,',' &
            1pe10.3,') (',1pe10.3,',',1pe10.3,')')
3101 FORMAT(i7,f7.1,3i8,2i4,i4,' (',1pe10.3,',' &
            1pe10.3,') (',1pe10.3,',',1pe10.3,')')

!------ Initialize

dumpOutput = SAG_ERROR

!------ Associate "local" grid structure pointer

grd => SAG_PtrGrdStr( grdI )

!------ Count aux data
nc   = 0
naux = 0
IF( grd%naux > 0 )THEN
  DO i = 1,grd%naux
    IF( grd%aux(i)%alloc )THEN
      DO ii = 1,grd%ncells
        IF( ASSOCIATED(grd%aux(i)%srf_data(ii)%data) )THEN
          nc   = nc + 1
          naux = naux + SIZE(grd%aux(i)%srf_data(ii)%data)
        END IF
      END DO
    END IF
  END DO
END IF

SELECT CASE (mode)
  CASE (MODE_BRIEF)
    IF( grd%time >= 999.99001 )THEN
      WRITE(lun,3101)grd%record,grd%time,grd%ncells,nc,naux,grd%nx,grd%ny, &
                   grd%maxlev,grd%xmin,grd%ymin, &
    			         grd%xmin+grd%dx*ABS(FLOAT(grd%nx)), &
                   grd%ymin+grd%dy*ABS(FLOAT(grd%ny))
    ELSE
      WRITE(lun,3100)grd%record,grd%time,grd%ncells,nc,naux,grd%nx,grd%ny, &
                   grd%maxlev,grd%xmin,grd%ymin, &
    			         grd%xmin+grd%dx*ABS(FLOAT(grd%nx)), &
                   grd%ymin+grd%dy*ABS(FLOAT(grd%ny))
    END IF
  CASE (MODE_FULL)
    irv = dumpOutputLev(mode,grdI,lun)
    IF( irv /= SAG_OK )GOTO 9999
  CASE (MODE_INT)
    irv = dumpOutputLev(mode,grdI,lun)
    IF( irv /= SAG_OK )GOTO 9999
  CASE (MODE_DUMP)
    WRITE(lun,'(1x,a,2x,a,1x,20(6x,a,6x))')'cell','igrd',(grd%ipnam(i),i=1,grd%nvart)
    DO ii= 1,grd%ncells
      WRITE(lun,'(i5,i6,1x,20(1pe16.6))')ii,grd%ipgrd(ii),(grd%ipdat((j-1)*grd%mxgrd+ii),j=1,grd%nvart)
    END DO
    IF( grd%naux > 0 )THEN
      WRITE(lun,'(1x,a,2x,a,1x,a,3x,a)')'ablk','cell','igrd','data'
      DO i = 1,grd%naux
        IF( grd%aux(i)%alloc )THEN
          DO ii = 1,grd%ncells
            IF( ASSOCIATED(grd%aux(i)%srf_data(ii)%data) )THEN
              WRITE(lun,'(i5,i5,i6,1x,20(1pe16.6))')i,ii,grd%ipgrd(ii),grd%aux(i)%srf_data(ii)%data
            END IF
          END DO
        END IF
      END DO
    END IF
  CASE (MODE_CELL)
    ii = MIN(MAX(1,cellID),grd%ncells)
    WRITE(lun,'(/,a,2i6)')'cell:',ii,grd%ipgrd(ii)
    WRITE(lun,'(/,a)')'CELL data'
    WRITE(lun,'(20(6x,a,6x))')(grd%ipnam(i),i=1,grd%nvart)
    WRITE(lun,'(20(1pe16.6))')(grd%ipdat((j-1)*grd%mxgrd+ii),j=1,grd%nvart)
    hasAux = .FALSE.
    IF( grd%naux > 0 )THEN
      DO i = 1,grd%naux
        IF( grd%aux(i)%alloc )THEN
          IF( ASSOCIATED(grd%aux(i)%srf_data(ii)%data) )THEN
            hasAux = .TRUE.
          END IF
        END IF
      END DO
    END IF
    IF( hasAux )THEN
      WRITE(lun,'(/,a)')'AUX data'
      WRITE(lun,'(1x,a,8x,a)')'ablk','data'
      DO i = 1,grd%naux
        IF( grd%aux(i)%alloc )THEN
          IF( ASSOCIATED(grd%aux(i)%srf_data(ii)%data) )THEN
            WRITE(lun,'(i5,20(1pe16.6))')i,grd%aux(i)%srf_data(ii)%data
          END IF
        END IF
      END DO
    END IF
  CASE DEFAULT
END SELECT

dumpOutput = SAG_OK

9999 CONTINUE

RETURN
END

!======================================================================

INTEGER FUNCTION dumpOutputLev( mode,grdI,lun )

USE sagdef_fd
USE sagstr_fd
USE PtrGrdStrItf
USE sagerr_fd
USE readsrf_mod

IMPLICIT NONE

INTEGER, INTENT(IN) :: mode
INTEGER, INTENT(IN) :: grdI
INTEGER, INTENT(IN) :: lun

INTEGER i, j, nxs, nys, nvs, ngrds, icell0, mlevx, nn
INTEGER mxlev, ix, iy, il, iv, mlev

LOGICAL lint

TYPE( SAGgrid_str ), POINTER :: grd


1900  FORMAT(/,'    ************* ',A,' ************')
2000	FORMAT(/,' irec   time    ncell  m0  n0 nv ml  mx                     ', &
             'domain',/,' ====== ======= ====== === === == == === ',47('='))
2100	FORMAT(i7,f7.2,i8,2i4,2i3,i4' (',1pe10.3,',' &
             1pe10.3,') (',1pe10.3,',',1pe10.3,')')
2101	FORMAT(i7,f7.1,i8,2i4,2i3,i4' (',1pe10.3,',' &
             1pe10.3,') (',1pe10.3,',',1pe10.3,')')
2201	FORMAT(/,4x,'lev  ncell',6(:,4x,a,3x),:/(:14x,6(4x,a,3x)))
2202	FORMAT(4x,'=== ======',6(:,' ===',a,'==='))
2200	FORMAT(4x,i3,i7,1p6e11.3,:/(:,14x,1p6e11.3))

!------ Initialize

dumpOutputLev = SAG_ERROR

!------ Associate "local" grid structure pointer

grd => SAG_PtrGrdStr( grdI )

nvs = grd%nvart
nxs = grd%nx
nys = grd%ny
ngrds = grd%ncells
mlev = grd%maxlev

lint = mode == MODE_INT

!-------- Find the maximum level of refinement

IF( ALLOCATED(cmax) )DEALLOCATE( cmax, STAT=i)
IF( ALLOCATED(cmin) )DEALLOCATE( cmin, STAT=i)
IF( ALLOCATED(cint) )DEALLOCATE( cint, STAT=i)
IF( ALLOCATED(cintt) )DEALLOCATE( cintt, STAT=i)
IF( ALLOCATED(ngrd) )DEALLOCATE( ngrd, STAT=i)
ALLOCATE( cmax(nvs,0:MAXL), STAT=i)
IF( i .NE. 0 )THEN
  WRITE(*,*) 'Error allocating cmax',nvs,MAXL,i
  GOTO 9999
END IF
ALLOCATE( cmin(nvs,0:MAXL), STAT=i)
IF( i .NE. 0 )THEN
  WRITE(*,*) 'Error allocating cmin',nvs,MAXL,i
  GOTO 9999
END IF
ALLOCATE( cint(nvs,0:MAXL), STAT=i)
IF( i .NE. 0 )THEN
  WRITE(*,*) 'Error allocating cint',nvs,MAXL,i
  GOTO 9999
END IF
ALLOCATE( cintt(nvs), STAT=i)
IF( i .NE. 0 )THEN
  WRITE(*,*) 'Error allocating cintt',nvs,i
  GOTO 9999
END IF
ALLOCATE( ngrd(0:MAXL), STAT=i)
IF( i .NE. 0 )THEN
  WRITE(*,*) 'Error allocating ngrd',MAXL,i
  GOTO 9999
END IF

DO i = 0,MAXL
  ngrd(i) = 0
  DO j = 1,nvs
    cmax(j,i) = -1.e+36
    cmin(j,i) = +1.e+36
    cint(j,i) = 0.0
  END DO
END DO

IF( grd%type == SAG_GRID_BOTH )THEN
  nn = 3
ELSE
  nn = 1
END IF
mxlev = 0
DO ix = 1,nxs
  DO iy = 1,nys

    icell0 = (iy-1)*nxs + ix
    mlevx   = 0
    CALL statsget(lint,grdI,nvs,ngrds,icell0,mlevx,nn)
    mxlev  = MAX(mxlev,mlevx)

  END DO
END DO
DO il = 0,mxlev
  DO iv = 1,nvs
    IF( cmin(iv,il) == +1.e+36 )cmin(iv,il)=0.0
  END DO
END DO

WRITE(*,2000)
IF( grd%time > 999.99001)THEN
  WRITE(lun,2101)grd%record,grd%time,ngrds,nxs,nys,nvs,mxlev,mlev,grd%xmin,grd%ymin, &
    		 grd%xmin+grd%dx*ABS(FLOAT(nxs)),grd%ymin+grd%dy*ABS(FLOAT(nys))
ELSE
  WRITE(lun,2100)grd%record,grd%time,ngrds,nxs,nys,nvs,mxlev,mlev,grd%xmin,grd%ymin, &
    		 grd%xmin+grd%dx*ABS(FLOAT(nxs)),grd%ymin+grd%dy*ABS(FLOAT(nys))
END IF
IF(lint)THEN
  WRITE(lun,1900)'Integral'
  WRITE(lun,2201)(grd%ipnam(i),i=1,nvs)
  WRITE(lun,2202)('====',i=1,MIN(6,nvs))
  nn = 0
  DO iv = 1,nvs
    cintt(iv) = 0.
  END DO
  DO il = 0,mxlev
    WRITE(*,2200)il,ngrd(il),(cint(iv,il)*grd%dx*grd%dy,iv=1,nvs)
    nn = nn + ngrd(il)
    DO iv = 1,nvs
      cintt(iv) = cintt(iv) + cint(iv,il)*grd%dx*grd%dy
    END DO
  END DO
  WRITE(*,2200)mxlev,ngrds,(cintt(iv),iv=1,nvs)
  IF( nn /= ngrds )THEN
    WRITE(*,*) '******ERROR - Inconsistent grid',nn,ngrds
  END IF
END IF
WRITE(lun,1900)'Max Value'
WRITE(lun,2201)(grd%ipnam(i),i=1,nvs)
WRITE(lun,2202)('====',i=1,MIN(6,nvs))
nn = 0
DO il = 0,mxlev
  WRITE(*,2200)il,ngrd(il),(cmax(iv,il),iv=1,nvs)
  nn = nn + ngrd(il)
END DO
IF( nn /= ngrds )THEN
  WRITE(*,*) '******ERROR - Inconsistent grid',nn,ngrds
END IF
WRITE(lun,1900)'Min Value'
WRITE(lun,2201)(grd%ipnam(i),i=1,nvs)
WRITE(lun,2202)('====',i=1,MIN(6,nvs))
nn = 0
DO il = 0,mxlev
  WRITE(lun,2200)il,ngrd(il),(cmin(iv,il),iv=1,nvs)
  nn = nn + ngrd(il)
END DO
IF( nn /= ngrds )THEN
  WRITE(*,*) '******ERROR - Inconsistent grid',nn,ngrds
END IF

dumpOutputLev = SAG_OK

9999 CONTINUE

IF( ALLOCATED(cmax) )DEALLOCATE( cmax, STAT=i)
IF( ALLOCATED(cmin) )DEALLOCATE( cmin, STAT=i)
IF( ALLOCATED(cint) )DEALLOCATE( cint, STAT=i)
IF( ALLOCATED(cint) )DEALLOCATE( cintt, STAT=i)
IF( ALLOCATED(ngrd) )DEALLOCATE( ngrd, STAT=i)

RETURN
END

!-----------------------------------------------------------------------

RECURSIVE SUBROUTINE statsget(lint,grdI,nvs,ncell,icell0,mlev0,nn)

USE readsrf_mod
USE PtrGrdStrItf
USE sagdef_fd
USE sagstr_fd
USE PtrGrdStrItf
USE sagerr_fd

IMPLICIT NONE

LOGICAL  lint
INTEGER  nvs
INTEGER  grdI
INTEGER  ncell
INTEGER  icell0
INTEGER  mlev0
INTEGER  nn

INTEGER iv, mlevx, i, icell, mlev, jj
REAL fac

TYPE( SAGgrid_str ), POINTER :: grd

grd => SAG_PtrGrdStr( grdI )

ngrd(mlev0) = ngrd(mlev0)+1
fac = 2.0**(-2*mlev0)
DO iv = 1,nvs
  jj = (iv-1)*grd%mxgrd + icell0
  cmax(iv,mlev0) = MAX(cmax(iv,mlev0),grd%ipdat(jj))
  IF( grd%ipdat(jj) /= 0.0 )THEN
    cmin(iv,mlev0) = MIN(cmin(iv,mlev0),grd%ipdat(jj))
  END IF
  IF( lint )THEN
    cint(iv,mlev0) = cint(iv,mlev0) + grd%ipdat(jj)*fac
  END IF
END DO

IF( grd%ipgrd(icell0) /= 0 )THEN
  mlevx = mlev0 + 1
  DO i = 0,nn
    icell = grd%ipgrd(icell0) + i
    mlev  = mlevx
    CALL statsget(lint,grdI,nvs,ncell,icell,mlev,nn)
    mlev0 = MAX(mlev,mlev0)
  END DO
END IF

RETURN

END
