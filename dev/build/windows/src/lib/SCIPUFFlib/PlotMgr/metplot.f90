!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
SUBROUTINE CountMetChoices( n2,n3 )

USE files_fi
USE error_fi
USE plotlist_fi
USE field_fd
USE plotmet_fi
USE met_fi, ONLY : nBaseMet

IMPLICIT NONE

INTEGER, INTENT( OUT ) :: n2, n3

REAL    dum, Ptop, Ztop
INTEGER ios, imax, jmax, kmax, ndum, n, k, i, nmax, itype, igrid

CHARACTER(8) fflag, cdum

n2 = 0
n3 = 0

IF( .NOT.hasPlotTimes(HP_METTIME+1) )THEN
  ALLOCATE( nMet2D(1),nMet3D(1),STAT=ios )
  nMet2D(1) = 0
  nMet3D(1) = 0
  RETURN
END IF

ALLOCATE( nMet2D(nBaseMet),nMet3D(nBaseMet),STAT=ios )
IF( ios /= 0 )THEN
  nError   = UK_ERROR
  eRoutine = 'CountMetChoices'
  eMessage = 'Error allocating met plot arrays'
  GOTO 9999
END IF

DO i = 1,nBaseMet

  IF( i == 1 )THEN
    file_tmp = file_mcw
  ELSE
    k = LEN_TRIM(file_mcw)
    WRITE(file_tmp,'(A,I1.0)')file_mcw(1:k-1),i
  END IF

  OPEN( FILE=TRIM(file_tmp),UNIT=lun_mcw,STATUS='OLD',ACTION='READ',IOSTAT=ios )
  IF( ios /= 0 )THEN
    nError   = OP_ERROR
    eRoutine = 'CountMetChoices'
    eMessage = 'Error opening MET output file: '//TRIM(file_tmp)
    GOTO 9999
  END IF

  READ(lun_mcw,'(A8)',IOSTAT=ios) fflag
  IF( ios /= 0 )THEN
    nError   = RD_ERROR
    eRoutine = 'CountMetChoices'
    eMessage = 'Error reading MET input file'
    CALL ReportFileName( eInform,'File=',file_tmp )
    GOTO 9999
  END IF

!------ If first record begins with 'F', this is a formatted MEDOC file

  IF( fflag(1:1) /= 'F' )THEN

    CLOSE(lun_mcw,IOSTAT=ios)
    OPEN(UNIT=lun_mcw,FILE=TRIM(file_tmp),STATUS='OLD',FORM='UNFORMATTED', &
                                             ACTION='READ',IOSTAT=ios)
    IF( ios /= 0 )THEN
      nError   = OP_ERROR
      eRoutine = 'CountMetChoices'
      eMessage = 'Error opening MET output file: '//TRIM(file_tmp)
      GOTO 9999
    END IF
    READ(lun_mcw,IOSTAT=ios) fflag

    IF( fflag(1:1) /= 'B' )THEN
      nError   = UK_ERROR
      eRoutine = 'CountMetChoices'
      eMessage = 'Unrecognized MET output file: '//TRIM(file_tmp)
      GOTO 9999
    END IF

    lformat = .FALSE.

  ELSE

    lformat = .TRUE.

  END IF

  CALL SkipModelHeader()

  IF( lformat )THEN
    READ(lun_mcw,*,IOSTAT=ios)                 !Skip format record
    IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip codename record
    IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip time record
    IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip dummy record
    IF( ios == 0 )READ(lun_mcw,'(6(I12,1X))',IOSTAT=ios) imax,jmax,kmax,ndum,nMet3D(i),nMet2D(i)
  ELSE
    READ(lun_mcw,IOSTAT=ios)                 !Skip format record
    IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip codename record
    IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip time record
    IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip dummy record
    IF( ios == 0 )READ(lun_mcw,IOSTAT=ios) imax,jmax,kmax,ndum,nMet3D(i),nMet2D(i)
  END IF

  IF( ios /= 0 )THEN
    nError   = RD_ERROR
    eRoutine = 'CountMetChoices'
    eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
    GOTO 9999
  END IF

  CLOSE( UNIT=lun_mcw,IOSTAT=ios )

END DO

nmax = MAXVAL(nMet2D)
ALLOCATE( MetVar2D(nBaseMet,nmax),MetUnit2D(nBaseMet,nmax),STAT=ios )
IF( ios == 0 )THEN
  nmax = MAXVAL(nMet3D) + 1
  ALLOCATE( MetVar3D(nBaseMet,nmax),MetUnit3D(nBaseMet,nmax),STAT=ios )
END IF
IF( ios /= 0 )THEN
  nError   = UK_ERROR
  eRoutine = 'CountMetChoices'
  eMessage = 'Error allocating variable name array'
  GOTO 9999
END IF

DO i = 1,nBaseMet

!---- Check for terrain on file if there are 2D fields

  IF( nMet2D(i)+nMet3D(i) > 0 )THEN

    IF( i == 1 )THEN
      file_tmp = file_mcw
    ELSE
      k = LEN_TRIM(file_mcw)
      WRITE(file_tmp,'(A,I1.0)')file_mcw(1:k-1),i
    END IF

    IF( lformat )THEN
      OPEN( FILE=TRIM(file_tmp),UNIT=lun_mcw,STATUS='OLD',ACTION='READ',IOSTAT=ios )
    ELSE
      OPEN( FILE=TRIM(file_tmp),UNIT=lun_mcw,STATUS='OLD',ACTION='READ', &
            FORM='UNFORMATTED',IOSTAT=ios )
    END IF
    IF( ios /= 0 )THEN
      nError   = OP_ERROR
      eRoutine = 'CountMetChoices'
      eMessage = 'Error opening MET output file: '//TRIM(file_tmp)
      GOTO 9999
    END IF

    IF( ASSOCIATED(pMetGrid) )THEN
      igrid = i
    ELSE
      igrid = 0
    END IF
    CALL ReadModelHeader( igrid,itype,Ptop )

    IF( lformat )THEN
      READ(lun_mcw,*,IOSTAT=ios)                 !Skip format record
      IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip codename record
      IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip time record
      IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip dummy record
      IF( ios == 0 )READ(lun_mcw,'(6(I12,1X))',IOSTAT=ios) imax,jmax,kmax,ndum,nMet3D(i),nMet2D(i)
      IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)
      IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)
      IF( ios == 0 )READ(lun_mcw,'(6(F12.4,1X))',IOSTAT=ios) (dum,k=1,kmax+10),Ztop
    ELSE
      READ(lun_mcw,IOSTAT=ios)                 !Skip format record
      IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip codename record
      IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip time record
      IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip dummy record
      IF( ios == 0 )READ(lun_mcw,IOSTAT=ios) imax,jmax,kmax,ndum,nMet3D(i),nMet2D(i)
      IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)
      IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)
      IF( ios == 0 )READ(lun_mcw,IOSTAT=ios) (dum,k=1,kmax+10),Ztop
    END IF

    IF( ios /= 0 )THEN
      nError   = RD_ERROR
      eRoutine = 'CountMetChoices'
      eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
      GOTO 9999
    END IF

    IF( ASSOCIATED(pMetGrid) )THEN
      pMetGrid(i)%nz = kmax
      pMetGrid(i)%coordVert%Ztop= Ztop
      istgMet(i) = itype
    END IF

!---- Read field names

    IF( lformat )THEN
      IF( ndum > 0 )THEN
        READ(lun_mcw,'(6(A8,1X))',IOSTAT=ios) (cdum,n=1,ndum), &
                    (MetVar3D(i,n),n=1,nMet3D(i)),(MetUnit3D(i,n),n=1,nMet3D(i)), &
                    (MetVar2D(i,n),n=1,nMet2D(i)),(MetUnit2D(i,n),n=1,nMet2D(i))
      ELSE
        READ(lun_mcw,'(6(A8,1X))',IOSTAT=ios) &
                    (MetVar3D(i,n),n=1,nMet3D(i)),(MetUnit3D(i,n),n=1,nMet3D(i)), &
                    (MetVar2D(i,n),n=1,nMet2D(i)),(MetUnit2D(i,n),n=1,nMet2D(i))
      END IF
    ELSE
      IF( ndum > 0 )THEN
        READ(lun_mcw,IOSTAT=ios) (cdum,n=1,ndum), &
                    (MetVar3D(i,n),n=1,nMet3D(i)),(MetUnit3D(i,n),n=1,nMet3D(i)), &
                    (MetVar2D(i,n),n=1,nMet2D(i)),(MetUnit2D(i,n),n=1,nMet2D(i))
      ELSE
        READ(lun_mcw,IOSTAT=ios) &
                    (MetVar3D(i,n),n=1,nMet3D(i)),(MetUnit3D(i,n),n=1,nMet3D(i)), &
                    (MetVar2D(i,n),n=1,nMet2D(i)),(MetUnit2D(i,n),n=1,nMet2D(i))
      END IF
    END IF

    IF( nMet3D(i) >= 2 )THEN
      nMet3D(i) = nMet3D(i) + 1    ! Add one for vector plot

      MetVar3D(i,nMet3D(i)) = 'Vector'
      MetUnit3D(i,nMet3D(i)) = 'M/S'
    END IF

    n2 = n2 + nMet2D(i)
    n3 = n3 + nMet3D(i)

    DO n = 1,nMet2D(i)
      IF( TRIM(MetVar2D(i,n)) == 'REL' )n2 = n2 - 1
    END DO

  END IF

END DO

IF( n2 == 0 )nMet2D(1) = 0

n2Dchoice = n2

9999 CONTINUE

CLOSE( UNIT=lun_mcw,IOSTAT=ios )

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE SkipModelHeader()

USE files_fi
USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER ios, i, nStg3D, nStg2D

CHARACTER(8) mapProj, string

!------ Rewind to first record

REWIND(lun_mcw,IOSTAT=ios)

!------ For formatted file, skip until "standard" format record

IF( lformat )THEN

  mapProj = 'XXXXXXXX'

  DO WHILE( TRIM(mapProj) /= 'FFFFFFFF' )
    READ(lun_mcw,'(A8)',IOSTAT=ios) mapProj
    IF( ios /= 0 )EXIT
    CALL CUPPER( mapProj )
  END DO

  BACKSPACE(lun_mcw,IOSTAT=ios) !Position to read format record

!------ Binary files requires more "parsing" of records

ELSE

  READ(lun_mcw,IOSTAT=ios) mapProj
  IF( ios /= 0 )GOTO 9999
  IF( mapProj == 'BBBBBBBB' )THEN
    BACKSPACE(lun_mcw,IOSTAT=ios) !Position to read format record
    GOTO 9999
  END IF

!------ Skip map projection data record (where appropriate)

  SELECT CASE( TRIM(mapProj(2:8)) )
    CASE( 'LAMBERT','POLAR','MERCATR','MERCATO','MERCTR','UTM' )
      READ(lun_mcw,IOSTAT=ios)
      IF( ios /= 0 )GOTO 9999
  END SELECT

!------ Check vertical coordinate

  READ(lun_mcw,IOSTAT=ios) string
  IF( ios /= 0 )GOTO 9999

!------ Skip sigma coordinate inputs

  SELECT CASE( TRIM(ADJUSTL(string)) )
    CASE( 'SIGMA','SIGMAF' )

      string = TRIM(ADJUSTL(string))
      READ(lun_mcw,IOSTAT=ios)
      IF( ios /= 0 )GOTO 9999

      IF( TRIM(string) == 'SIGMAF' )THEN
        READ(lun_mcw,IOSTAT=ios)
        IF( ios /= 0 )GOTO 9999
      END IF

  END SELECT

!------ Skip grid staggering records

  READ(lun_mcw,IOSTAT=ios) nStg3D,nStg2D
  IF( ios /= 0 )GOTO 9999

  IF( nStg3d > 0 )THEN
    DO i = 1,nStg3d
      READ(lun_mcw,IOSTAT=ios)
      IF( ios /= 0 )GOTO 9999
    END DO
  END IF

  IF( nStg2d > 0 )THEN
    DO i = 1,nStg2d
      READ(lun_mcw,IOSTAT=ios)
      IF( ios /= 0 )GOTO 9999
    END DO
  END IF

END IF

9999 CONTINUE

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE ReadModelHeader( igrid,itype,Ptop )

!------ Get factors for vertical coordinate and grid staggering used in met plotting

USE files_fi
USE error_fi
USE plotmet_fi
USE SWIMparam_fd
USE default_fd

IMPLICIT NONE

INTEGER, INTENT( IN  ) :: igrid
INTEGER, INTENT( OUT ) :: itype
REAL,    INTENT( OUT ) :: Ptop

INTEGER, PARAMETER :: MAXN = 10  !Max no. of variables in a map header record

INTEGER ios, nch, n_arg, nStg3D, i, ix, iy, iz
REAL    P00, TsrfRef, lapseRef, Tiso
LOGICAL lerr, lstagger

CHARACTER(8) mapProj, string, codename, cdum
CHARACTER(80) line
CHARACTER(64) kwrd
CHARACTER(32) c_arg(MAXN)

!------ Read from the top; initialize output

REWIND(lun_mcw,IOSTAT=ios)

itype = 0
Ptop  = -1.

mapProj = 'XXXXXXXX'

IF( igrid > 0 )THEN
  pMetGrid(igrid)%coordVert%type     = I_SIGMAZ  !Default vertical grid
  pMetGrid(igrid)%coordVert%Ztop     = 0.
  pMetGrid(igrid)%coordVert%Ptop     = 0.
  pMetGrid(igrid)%coordVert%P00      = 0.
  pMetGrid(igrid)%coordVert%TsrfRef  = 0.
  pMetGrid(igrid)%coordVert%lapseRef = 0.
  pMetGrid(igrid)%coordVert%Tiso     = 0.
END IF

!------ Check for special map coordinates

IF( lformat )THEN
  READ(lun_mcw,'(A8)',IOSTAT=ios) mapProj
  IF( mapProj == 'FFFFFFFF' )THEN
    READ(lun_mcw,'(A8,1X,A8)',IOSTAT=ios) codename,cdum
    IF( cdum(1:1) == 'T' )THEN
      itype = IBSET(itype,GTB_STAGGER)
      itype = IBSET(itype,GTB_STAGGERZ)
    END IF
    GOTO 9999
  END IF
ELSE
  READ(lun_mcw,IOSTAT=ios) mapProj
  IF( mapProj == 'BBBBBBBB' )THEN
    READ(lun_mcw,IOSTAT=ios) codename,lstagger
    IF( ios == 0 )THEN
      IF( lstagger )THEN
        itype = IBSET(itype,GTB_STAGGER)
        itype = IBSET(itype,GTB_STAGGERZ)
      END IF
    END IF
    GOTO 9999
  END IF
END IF
IF( ios /= 0 )GOTO 9999

!------ Skip map projection data record

SELECT CASE( TRIM(mapProj(2:8)) )
  CASE( 'LAMBERT','POLAR','MERCATR','MERCATO','MERCTR','UTM' )
    IF( lformat )THEN
      READ(lun_mcw,*,IOSTAT=ios)
    ELSE
      READ(lun_mcw,IOSTAT=ios)
    END IF
    IF( ios /= 0 )GOTO 9999
END SELECT

!------ Check vertical coordinate

IF( lformat )THEN
  CALL get_next_data( lun_mcw,line,nch,kwrd,n_arg,c_arg,MAXN,lerr )
  IF( lerr .OR. n_arg < 1 )ios = -1
ELSE
  READ(lun_mcw,IOSTAT=ios) c_arg(1)(1:8)
END IF
IF( ios /= 0 )GOTO 9999

!------ Get top pressure for sigma coordinates

SELECT CASE( TRIM(ADJUSTL(c_arg(1)(1:8))) )
  CASE( 'SIGMAF' )

    string = TRIM(ADJUSTL(c_arg(1)(1:8)))
    itype  = IBSET(itype,GTB_SIGMA)
    IF( lformat )THEN
      CALL get_next_data( lun_mcw,line,nch,kwrd,n_arg,c_arg,MAXN,lerr )
      IF( lerr .OR. n_arg < 2 )ios = -1
      IF( ios == 0 )READ(c_arg(1),*,IOSTAT=ios ) Ptop
      IF( ios == 0 )READ(c_arg(2),*,IOSTAT=ios ) P00
    ELSE
      READ(lun_mcw,IOSTAT=ios) Ptop, P00
    END IF
    IF( ios /= 0 )GOTO 9999

    IF( TRIM(string) == 'SIGMAF' )THEN
      IF( lformat )THEN
        CALL get_next_data( lun_mcw,line,nch,kwrd,n_arg,c_arg,MAXN,lerr )
        IF( lerr .OR. n_arg < 3 )ios = -1
        IF( ios == 0 )READ(c_arg(1),*,IOSTAT=ios ) TsrfRef
        IF( ios == 0 )READ(c_arg(2),*,IOSTAT=ios ) lapseRef
        IF( ios == 0 )READ(c_arg(3),*,IOSTAT=ios ) Tiso
      ELSE
        READ(lun_mcw,IOSTAT=ios) TsrfRef,lapseRef,Tiso
      END IF
      IF( ios /= 0 )GOTO 9999
    END IF

    IF( igrid > 0 )THEN
      pMetGrid(igrid)%coordVert%type     = I_SIGMAP
      pMetGrid(igrid)%coordVert%Ptop     = Ptop
      pMetGrid(igrid)%coordVert%P00      = P00
      pMetGrid(igrid)%coordVert%TsrfRef  = TsrfRef
      pMetGrid(igrid)%coordVert%lapseRef = lapseRef
      pMetGrid(igrid)%coordVert%Tiso     = Tiso
    END IF

  CASE( 'Z3DAGL','HGHT-AGL','HEIGHT' )
    IF( igrid > 0 )pMetGrid(igrid)%coordVert%type = I_Z3D

  CASE( 'SIGMAZ' )
    IF( igrid > 0 )pMetGrid(igrid)%coordVert%type = I_SIGMAZ

  CASE( 'SIGMAZM' )
    IF( igrid > 0 )pMetGrid(igrid)%coordVert%type = I_SIGMAZM

END SELECT

!------ Check grid staggering

IF( lformat )THEN
  CALL get_next_data( lun_mcw,line,nch,kwrd,n_arg,c_arg,MAXN,lerr )
  IF( lerr .OR. n_arg < 1 )ios = -1
  IF( ios == 0 )READ(c_arg(1),*,IOSTAT=ios ) nStg3D
ELSE
  READ(lun_mcw,IOSTAT=ios) nStg3D
END IF
IF( ios /= 0 )GOTO 9999

!------ Assume "standard" stagger if nstg3 > 1 and fields are offset in only 1 direction;
!       assume Arakawa C if offset in 2 directions.  Also, assume standard vertical stagger
!       if any field is vertically offset

IF( nStg3d > 1 )THEN
  DO i = 1,nStg3d
    IF( lformat )THEN
      CALL get_next_data( lun_mcw,line,nch,kwrd,n_arg,c_arg,MAXN,lerr )
      IF( lerr .OR. n_arg < 4 )ios = -1
      IF( ios == 0 )THEN
        READ(c_arg(2),*,IOSTAT=ios ) ix
        READ(c_arg(3),*,IOSTAT=ios ) iy
        READ(c_arg(4),*,IOSTAT=ios ) iz
      END IF
    ELSE
      READ(lun_mcw,IOSTAT=ios) c_arg(1)(1:8),ix,iy,iz
    END IF
    IF( ios /= 0 )GOTO 9999
    IF( ix /= 0 .OR. iy /= 0 )THEN
      itype = IBSET(itype,GTB_STAGGER)
      IF( ix /= 0 .AND. iy /= 0 )itype = IBSET(itype,GTB_STAGGERB)
    END IF
    IF( iz /= 0 )itype = IBSET(itype,GTB_STAGGERZ)
  END DO
END IF

9999 CONTINUE

!------ Position to read (standard) format record

REWIND(lun_mcw,IOSTAT=ios)
CALL SkipModelHeader()

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE SkipMetHeader( imax,jmax,kmax )

USE files_fi
USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER, INTENT( OUT ) :: imax, jmax, kmax

REAL    dum
INTEGER ios, ndum, n, k, n2, n3

CHARACTER(8) cdum

IF( lformat )THEN
  READ(lun_mcw,*,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip codename record
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip time record
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip dummy record
  IF( ios == 0 )READ(lun_mcw,'(6(I12,1X))',IOSTAT=ios) imax,jmax,kmax,ndum,n3,n2
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip grid records
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,'(6(F12.4,1X))',IOSTAT=ios) (dum,k=1,kmax+11)
  IF( ios == 0 .AND. ndum > 0 )THEN         !Skip field names
    READ(lun_mcw,'(6(A8,1X))',IOSTAT=ios) (cdum,n=1,ndum), &
                (cdum,n=1,n3),(cdum,n=1,n3), &
                (cdum,n=1,n2),(cdum,n=1,n2)
  ELSE
    READ(lun_mcw,'(6(A8,1X))',IOSTAT=ios) &
                (cdum,n=1,n3),(cdum,n=1,n3), &
                (cdum,n=1,n2),(cdum,n=1,n2)
  END IF
ELSE
  READ(lun_mcw,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip codename record
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip time record
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip dummy record
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios) imax,jmax,kmax,ndum,n3,n2
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)  !Skip field names
END IF

IF( ios /= 0 )THEN
  nError   = RD_ERROR
  eRoutine = 'SkipMetHeader'
  eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
  GOTO 9999
END IF

9999 CONTINUE

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE SkipMetTime( igrd )

USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER, INTENT( IN ) :: igrd

INTEGER imax, jmax, kmax, i, n3        ,k

real, dimension(:,:,:), allocatable :: wrk

CALL SkipMetHeader( imax,jmax,kmax )
IF( nError /= NO_ERROR )GOTO 9999

allocate( wrk(imax,jmax,kmax) )

n3 = nMet3D(igrd)
IF( n3 > 2 )n3 = n3 - 1

DO i = 1,nMet3D(igrd)-1
  CALL SkipMet3D( imax,jmax,kmax )
  IF( nError /= NO_ERROR )GOTO 9999
END DO

DO i = 1,nMet2D(igrd)
  CALL SkipMet2D( imax,jmax )
  IF( nError /= NO_ERROR )GOTO 9999
END DO

9999 CONTINUE

if( allocated(wrk) )deallocate( wrk )

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE SkipMet3D( imax,jmax,kmax )

USE files_fi
USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER, INTENT( IN ) :: imax, jmax, kmax

INTEGER i, ntot, ios
REAL    dum

ntot = imax*jmax*kmax

IF( lformat )THEN
  READ(lun_mcw,'(6(F12.4,1X))',IOSTAT=ios) (dum,i=1,ntot)
ELSE
  READ(lun_mcw,IOSTAT=ios) (dum,i=1,ntot)
END IF

IF( ios /= 0 )THEN
  nError   = RD_ERROR
  eRoutine = 'SkipMet3D'
  eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
END IF

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE SkipMet2D( imax,jmax )

USE files_fi
USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER, INTENT( IN ) :: imax, jmax

INTEGER i, ntot, ios
REAL    dum

ntot = imax*jmax

IF( lformat )THEN
  READ(lun_mcw,'(6(F12.4,1X))',IOSTAT=ios) (dum,i=1,ntot)
ELSE
  READ(lun_mcw,IOSTAT=ios) (dum,i=1,ntot)
END IF

IF( ios /= 0 )THEN
  nError   = RD_ERROR
  eRoutine = 'SkipMet2D'
  eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
END IF

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE ReadMet2D( wrk,imax,jmax )

USE files_fi
USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER,                    INTENT( IN  ) :: imax, jmax
REAL, DIMENSION(imax*jmax), INTENT( OUT ) :: wrk

INTEGER i, ntot, ios

ntot = imax*jmax

IF( lformat )THEN
  READ(lun_mcw,'(6(F12.0,1X))',IOSTAT=ios) (wrk(i),i=1,ntot)
ELSE
  READ(lun_mcw,IOSTAT=ios) (wrk(i),i=1,ntot)
END IF

IF( ios /= 0 )THEN
  nError   = RD_ERROR
  eRoutine = 'ReadMet2D'
  eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
END IF

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE ReadMetField( igrd,ivar,itime,wrk,mxgrd )

USE files_fi
USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER,                INTENT( IN  ) :: igrd         ! MET file number
INTEGER,                INTENT( IN  ) :: ivar         ! 2D-variable number
INTEGER,                INTENT( IN  ) :: itime        ! Time break number
INTEGER,                INTENT( IN  ) :: mxgrd        ! Field grid size
REAL, DIMENSION(mxgrd), INTENT( OUT ) :: wrk          ! Field array

INTEGER ios, imax, jmax, kmax, i, n3

IF( igrd == 1 )THEN
  file_tmp = file_mcw
ELSE
  i = LEN_TRIM(file_mcw)
  WRITE(file_tmp,'(A,I1.0)')file_mcw(1:i-1),igrd
END IF

IF( lformat )THEN
  OPEN( FILE=TRIM(file_tmp),UNIT=lun_mcw,STATUS='OLD',ACTION='READ',IOSTAT=ios )
ELSE
  OPEN( FILE=TRIM(file_tmp),UNIT=lun_mcw,STATUS='OLD',ACTION='READ', &
        FORM='UNFORMATTED',IOSTAT=ios )
END IF
IF( ios /= 0 )THEN
  nError   = OP_ERROR
  eRoutine = 'ReadMetField'
  eMessage = 'Error opening MET output file: '//TRIM(file_tmp)
  GOTO 9999
END IF

CALL SkipModelHeader()

DO i = 1,itime-1
  CALL SkipMetTime( igrd )
  IF( nError /= NO_ERROR )GOTO 9999
END DO

CALL SkipMetHeader( imax,jmax,kmax )
IF( nError /= NO_ERROR )GOTO 9999

!---- Check grid size

IF( imax*jmax /= mxgrd )THEN
  nError   = SZ_ERROR
  eRoutine = 'ReadMetField'
  eMessage = 'Incorrect field dimension on MET output file: '//TRIM(file_tmp)
  WRITE(eInform,'(A,2I6)')'File :',imax*jmax,mxgrd
  GOTO 9999
END IF

n3 = nMet3D(igrd)
IF( n3 > 2 )n3 = n3 - 1

DO i = 1,n3
  CALL SkipMet3D( imax,jmax,kmax )
  IF( nError /= NO_ERROR )GOTO 9999
END DO

DO i = 1,ivar-1
  CALL SkipMet2D( imax,jmax )
  IF( nError /= NO_ERROR )GOTO 9999
END DO

CALL ReadMet2D( wrk,imax,jmax )

9999 CONTINUE

CLOSE( UNIT=lun_mcw,IOSTAT=ios )

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE Read3DMetSlice( igrd,ivar,itime,wrk,mxgrd,zlev,hmin,dx_shift,dy_shift )

USE files_fi
USE error_fi
USE plotmet_fi
USE SWIMparam_fd
USE default_fd

IMPLICIT NONE

INTEGER,                INTENT( IN  ) :: igrd         ! MET file number
INTEGER,                INTENT( IN  ) :: ivar         ! 3D-variable number
INTEGER,                INTENT( IN  ) :: itime        ! Time break number
INTEGER,                INTENT( IN  ) :: mxgrd        ! Field grid size
REAL, DIMENSION(mxgrd), INTENT( OUT ) :: wrk          ! Field array
REAL,                   INTENT( IN  ) :: zlev         ! Slice height
REAL,                   INTENT( IN  ) :: hmin         ! Grid Hmin
REAL,                   INTENT( OUT ) :: dx_shift, dy_shift

INTEGER ios, imax, jmax, kmax, i, klev
INTEGER itype
REAL    Ptop, P0, pfac
REAL    rat

IF( igrd == 1 )THEN
  file_tmp = file_mcw
ELSE
  i = LEN_TRIM(file_mcw)
  WRITE(file_tmp,'(A,I1.0)')file_mcw(1:i-1),igrd
END IF

IF( lformat )THEN
  OPEN( FILE=TRIM(file_tmp),UNIT=lun_mcw,STATUS='OLD',ACTION='READ',IOSTAT=ios )
ELSE
  OPEN( FILE=TRIM(file_tmp),UNIT=lun_mcw,STATUS='OLD',ACTION='READ',&
        FORM='UNFORMATTED',IOSTAT=ios )
END IF
IF( ios /= 0 )THEN
  nError   = OP_ERROR
  eRoutine = 'Read3DMetSlice'
  eMessage = 'Error opening MET output file: '//TRIM(file_tmp)
  GOTO 9999
END IF

CALL ReadModelHeader( 0,itype,Ptop )

IF( BTEST(itype,GTB_STAGGER) )THEN
  IF( TRIM(MetVar3D(igrd,ivar)) /= 'W' )itype = IBCLR(itype,GTB_STAGGERZ)
END IF

!------ Define (approximate) factor for converting sigma-pressure to height

IF( BTEST(itype,GTB_SIGMA) )THEN
  P0 = 1.E5 * EXP(-Hmin/SCALE_HEIGHT)
  pfac = MAX(Ptop/P0,1.E-4)
ELSE
  pfac = 0.
END IF

!------ Skip to selected output time

DO i = 1,itime-1
  CALL SkipMetTime( igrd )
  IF( nError /= NO_ERROR )GOTO 9999
END DO

!------ Read standard MEDOC header

CALL Read3DMetHeader( imax,jmax,kmax,zlev,0.,klev,rat,itype,pfac )
IF( nError /= NO_ERROR )GOTO 9999

!---- Check grid size

IF( imax*jmax /= mxgrd )THEN
  nError   = SZ_ERROR
  eRoutine = 'Read3DMetSlice'
  eMessage = 'Incorrect field dimension on MET output file: '//TRIM(file_tmp)
  WRITE(eInform,'(A,2I6)')'File :',imax*jmax,mxgrd
  GOTO 9999
END IF

!------ Skip to selected 3d field

DO i = 1,ivar-1
  CALL SkipMet3D( imax,jmax,kmax )
  IF( nError /= NO_ERROR )GOTO 9999
END DO

CALL ReadMet3D( wrk,imax,jmax,klev,rat )
IF( nError /= NO_ERROR )GOTO 9999

dx_shift = 0.
dy_shift = 0.
IF( BTEST(itype,GTB_STAGGER) )THEN
  IF( TRIM(MetVar3D(igrd,ivar)) == 'U' )THEN
    dx_shift = 0.5
    IF( BTEST(itype,GTB_STAGGERB) )dy_shift = 0.5
  ELSE IF( TRIM(MetVar3D(igrd,ivar)) == 'V' )THEN
    dy_shift = 0.5
    IF( BTEST(itype,GTB_STAGGERB) )dx_shift = 0.5
  END IF
END IF

9999 CONTINUE

CLOSE( UNIT=lun_mcw,IOSTAT=ios )

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE Read3DMetHeader( imax,jmax,kmax,zlev,hmin,klev,rat,itype,pfac )

USE files_fi
USE error_fi
USE plotmet_fi
USE SWIMparam_fd

IMPLICIT NONE

INTEGER, INTENT( OUT ) :: imax, jmax, kmax
REAL,    INTENT( IN  ) :: zlev, hmin
INTEGER, INTENT( OUT ) :: klev
REAL,    INTENT( OUT ) :: rat
INTEGER, INTENT( IN  ) :: itype
REAL,    INTENT( IN  ) :: pfac

REAL    dum, ztop, fac, z
INTEGER ios, ndum, n, k, n2, n3
LOGICAL interp_w

REAL, DIMENSION(:), ALLOCATABLE :: zb

CHARACTER(8) cdum, codename

interp_w = BTEST(itype,GTB_STAGGERZ)

IF( lformat )THEN
  READ(lun_mcw,*,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,'(A8,1X,A8)',IOSTAT=ios) codename,cdum
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip time record
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)   !Skip dummy record
  IF( ios == 0 )READ(lun_mcw,'(6(I12,1X))',IOSTAT=ios) imax,jmax,kmax,ndum,n3,n2
ELSE
  READ(lun_mcw,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios) codename
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip time record
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)   !Skip dummy record
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios) imax,jmax,kmax,ndum,n3,n2
END IF

IF( ios /= 0 )THEN
  nError   = RD_ERROR
  eRoutine = 'Read3DMetHeader'
  eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
  GOTO 9999
END IF

ALLOCATE( zb(kmax),STAT=ios )
IF( ios /= 0 )THEN
  nError   = UK_ERROR
  eRoutine = 'Read3DMetHeader'
  eMessage = 'Error allocating grid array'
  CALL ReportFileName( eInform,'File=',file_tmp )
  GOTO 9999
END IF

!----- Skip grid records

IF( lformat )THEN
  READ(lun_mcw,*,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,*,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,'(6(F12.4,1X))',IOSTAT=ios) (zb(k),k=1,kmax),(dum,k=1,10),ztop
ELSE
  READ(lun_mcw,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios)
  IF( ios == 0 )READ(lun_mcw,IOSTAT=ios) (zb(k),k=1,kmax),(dum,k=1,10),ztop
END IF

IF( ios /= 0 )THEN
  nError = RD_ERROR
  eRoutine = 'Read3DMetHeader'
  eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
  GOTO 9999
END IF

!------ Approximate heights of sigma-pressure coordinates

IF( BTEST(itype,GTB_SIGMA) )THEN
  zb   = -LOG(pfac+(1.-pfac)*zb) * SCALE_HEIGHT
  ztop = zb(kmax)
  fac  = ztop / (ztop - hmin)
  zb   = zb * fac
END IF

!---- Reset grid for w-interpolation if staggered

IF( interp_w )THEN
  DO k = kmax,2,-1
    zb(k) = 0.5*(zb(k)+zb(k-1))
  END DO
  zb(1) = 0.0
END IF

!---- Skip field names

IF( lformat )THEN
  IF( ndum > 0 )THEN
    READ(lun_mcw,'(6(A8,1X))',IOSTAT=ios) (cdum,n=1,ndum), &
                (cdum,n=1,n3),(cdum,n=1,n3), &
                (cdum,n=1,n2),(cdum,n=1,n2)
  ELSE
    READ(lun_mcw,'(6(A8,1X))',IOSTAT=ios) &
                (cdum,n=1,n3),(cdum,n=1,n3), &
                (cdum,n=1,n2),(cdum,n=1,n2)
  END IF
ELSE
  READ(lun_mcw,IOSTAT=ios)
END IF

!--- Find nearest grid level

IF( kmax == 1 )THEN
  klev = 1
  rat  = 0.0
ELSE
  fac = (ztop - hmin)/ztop
  z = zlev/fac

  k = 2
  DO WHILE( z > zb(k) .AND. k < kmax )
    k = k + 1
  END DO

  klev = k
  rat  = (zb(k)-z)/(zb(k)-zb(k-1))
  rat  = MIN(MAX(rat,0.0),1.0)

END IF

9999 CONTINUE

IF( ALLOCATED(zb) )DEALLOCATE( zb,STAT=ios )

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE ReadMet3D( wrk,imax,jmax,klev,rat )

USE files_fi
USE error_fi
USE plotmet_fi

IMPLICIT NONE

INTEGER,                    INTENT( IN  ) :: imax, jmax, klev
REAL, DIMENSION(imax*jmax), INTENT( OUT ) :: wrk
REAL,                       INTENT( IN  ) :: rat

INTEGER i, ntot, ios
REAL    dum, rm1

REAL, DIMENSION(:), ALLOCATABLE :: wrk2

ntot = imax*jmax

IF( rat > 0.0 )THEN

  ALLOCATE( wrk2(ntot),STAT=ios )
  IF( ios /= 0 )THEN
    nError   = RD_ERROR
    eRoutine = 'ReadMet3D'
    eMessage = 'Error allocating temporary array using file: '//TRIM(file_tmp)
    GOTO 9999
  END IF

  IF( lformat )THEN
    READ(lun_mcw,'(6(F12.0,1X))',IOSTAT=ios) (dum,i=1,(klev-2)*ntot), &
                                             (wrk2(i),i=1,ntot),(wrk(i),i=1,ntot)
  ELSE
    READ(lun_mcw,IOSTAT=ios) (dum,i=1,(klev-2)*ntot),(wrk2(i),i=1,ntot),(wrk(i),i=1,ntot)
  END IF

  IF( ios /= 0 )THEN
    nError   = RD_ERROR
    eRoutine = 'ReadMet3D'
    eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
    GOTO 9999
  END IF

  rm1 = 1.0 - rat

  DO i = 1,ntot
    wrk(i) = rat*wrk2(i) + rm1*wrk(i)
  END DO

ELSE

  IF( lformat )THEN
    READ(lun_mcw,'(6(F12.0,1X))',IOSTAT=ios) (dum,i=1,(klev-1)*ntot),(wrk(i),i=1,ntot)
  ELSE
    READ(lun_mcw,IOSTAT=ios) (dum,i=1,(klev-1)*ntot),(wrk(i),i=1,ntot)
  END IF

  IF( ios /= 0 )THEN
    nError   = RD_ERROR
    eRoutine = 'ReadMet3D'
    eMessage = 'Error reading MET output file: '//TRIM(file_tmp)
    GOTO 9999
  END IF

END IF

9999 CONTINUE

IF( ALLOCATED(wrk2) )DEALLOCATE( wrk2,STAT=ios )

RETURN
END

SUBROUTINE WriteMetChoice( string,ivar,ifld )

USE plotmet_fi
USE met_fi

IMPLICIT NONE

CHARACTER(64), INTENT( OUT ) :: string
INTEGER,       INTENT( IN  ) :: ivar, ifld

CHARACTER(8) ext

INTEGER nl, ios

SELECT CASE( TRIM(MetVar2D(ifld,ivar)) )

  CASE( 'ZRUF','ZRUF(T)' )
    WRITE(string,'(A)')'Roughness'

  CASE( 'ZI' )
    WRITE(string,'(A)')'BL Depth'

  CASE( 'HCNP' )
    WRITE(string,'(A)')'Canopy Ht'

  CASE( 'ALPH' )
    WRITE(string,'(A)')'Canopy Param'

  CASE( 'BR' )
    WRITE(string,'(A)')'Bowen ratio'

  CASE( 'ALBD' )
    WRITE(string,'(A)')'Albedo'

  CASE( 'HFLX' )
    WRITE(string,'(A)')'Sfc Ht Flux'

  CASE( 'USTR','USTRX')
    WRITE(string,'(A)')'Sfc U*'

  CASE DEFAULT
   string = TRIM(MetVar2D(ifld,ivar))

END SELECT

IF( nBaseMet > 1 )THEN
  nl = LEN_TRIM(string)
  WRITE(ext,'(I8)',IOSTAT=ios) ifld
  string(nl+1:) = ', Grid '//TRIM(ADJUSTL(ext))
END IF

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE Write3DMetChoice( string,ivar,ifld )

USE plotmet_fi
USE met_fi

IMPLICIT NONE

CHARACTER(64), INTENT( OUT ) :: string
INTEGER,       INTENT( IN  ) :: ivar, ifld

CHARACTER(8) ext

INTEGER nl, ios

SELECT CASE( TRIM(MetVar3D(ifld,ivar)) )

  CASE( 'U','V','W' )
   string = TRIM(MetVar3D(ifld,ivar))

  CASE DEFAULT
   string = TRIM(MetVar3D(ifld,ivar))

END SELECT

IF( nBaseMet > 1 )THEN
  nl = LEN_TRIM(string)
  WRITE(ext,'(I8)',IOSTAT=ios) ifld
  string(nl+1:) = ', Grid '//TRIM(ADJUSTL(ext))
END IF

RETURN
END

!------------------------------------------------------------------------------

SUBROUTINE SetMetTimeList( ilist,ivar,ifld )

USE plotmet_fi
USE field_fd

IMPLICIT NONE

INTEGER, INTENT( OUT ) :: ilist
INTEGER, INTENT( IN  ) :: ivar, ifld

SELECT CASE( TRIM(MetVar2D(ifld,ivar)) )

  CASE( 'ZRUF','HCNP','ALPH','BR','ALBD'  )
    ilist = HP_NOTIME

  CASE( 'ZRUF(T)','ZI','HFLX','USTR' )
    ilist = HP_METTIME

  CASE DEFAULT
    ilist = HP_METTIME

END SELECT

RETURN
END

!------------------------------------------------------------------------------

INTEGER FUNCTION DrawVectorField( grdI,Field,PlotType,nlev,level,GUIdraw,UserFill )

USE field_fd
USE SCIMgr_fd
USE error_fi
USE sagdef_fd
USE PtrGrdStrItf
USE sagstr_fd

IMPLICIT NONE

INTEGER,                INTENT( IN ) :: grdI        !SAG grid ID
TYPE( SCIPPlotFieldT ), INTENT( IN ) :: Field       !Field definition
TYPE( SCIPPlotTypeT ),  INTENT( IN ) :: PlotType    !Plot definition
INTEGER,                INTENT( IN ) :: nlev        !No, of contour levels
REAL, DIMENSION(nlev),  INTENT( IN ) :: level       !Contour levels
TYPE( ARAPDrawT ),      INTENT( IN ) :: GUIdraw     !Draw instructions
INTEGER, EXTERNAL                    :: UserFill    !User Fill function

TYPE( SAGgrid_str ), POINTER :: grd

INTEGER i, j, ii, ilev
REAL    vmax, vfac, vscl, spd

REAL, DIMENSION(2) :: x, y
REAL, EXTERNAL     :: cosd

DrawVectorField = SCIPfailure

grd => SAG_PtrGrdStr( grdI )
IF( .NOT.ASSOCIATED(grd) )THEN
  nError   = UK_ERROR
  eRoutine = 'DrawVectorField'
  eMessage = 'Error getting grid structure from grid ID'
  GOTO 9999
END IF

!------ Set scale based on contour max, if positive, otherwise use max speed

IF( level(nlev) > 0.0 )THEN
  vmax = level(nlev)
ELSE
  vmax = 0.0
  DO j = 1,grd%ny
    IF( Field%coordinate%mode == HD_LATLON )THEN
      vfac = COSD(grd%ymin + (FLOAT(j)-0.5)*grd%dy)
    ELSE
      vfac = 1.0
    END IF
    DO i = 1,grd%nx
      ii = (j-1)*grd%nx + i
      vmax = MAX(vmax,SQRT( grd%ipdat(ii)**2 + (vfac*grd%ipdat(ii+grd%mxgrd))**2 ))
    END DO
  END DO
END IF

IF( vmax > 0.0 )THEN
  vscl = SQRT(grd%dx**2 + grd%dy**2)/vmax
  IF( grd%nx <= 2 .AND. grd%ny <= 2 )vscl = 0.25*vscl
ELSE
  vscl = 1.0
END IF

DO j = 1,grd%ny
  y(1) = grd%ymin + (FLOAT(j)-0.5)*grd%dy

  DO i =  1,grd%nx
    x(1) = grd%xmin + (FLOAT(i)-0.5)*grd%dx
    ii = (j-1)*grd%nx + i
    IF( grd%ipdat(ii) == HP_SPV .OR. grd%ipdat(ii+grd%mxgrd) == HP_SPV )CYCLE

    IF( GUIdraw%drawContour == SCIPtrue )THEN
      x(2) = x(1) + vscl*grd%ipdat(ii)
      y(2) = vscl*grd%ipdat(ii+grd%mxgrd)
    ELSE
      spd = SQRT( grd%ipdat(ii)**2 + grd%ipdat(ii+grd%mxgrd)**2 )
      IF( spd > 1.E-6 )THEN
        x(2) = x(1) + vscl*grd%ipdat(ii)/spd * 0.5*vmax
        y(2) = grd%ipdat(ii+grd%mxgrd) * vscl/spd * 0.5*vmax
      ELSE
        x(2) = x(1) + vscl*0.5*vmax
        y(2) = 0.
      END IF
    END IF
    IF( GUIdraw%fillContour == SCIPtrue )THEN
      spd = SQRT( grd%ipdat(ii)**2 + grd%ipdat(ii+grd%mxgrd)**2 )
      ilev = 1
      DO WHILE( spd > level(ilev) .AND. ilev < nlev )
        ilev = ilev + 1
      END DO
      ilev = nlev - ilev + 2
    ELSE
      ilev = 0
    END IF
    IF( UserFill( 2,x,y,ilev ) /= SAG_OK )GOTO 9999
  END DO
END DO

DrawVectorField = SCIPsuccess

9999 CONTINUE

RETURN
END
