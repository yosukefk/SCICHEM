PROGRAM crossv
IMPLICIT NONE

!------ create a vertical profile from slicev file

INTEGER, PARAMETER :: MAXX = 99, MAXZ = 1000

INTEGER :: nch,nchs,ncho,ns,nsrf,nz,nvxpp,ncht
INTEGER :: i,j,irec,i0,is

CHARACTER*80 fname
CHARACTER*80 oname
CHARACTER*80 sname
CHARACTER*80 title

CHARACTER*4 vname, xppname(MAXX+1)
REAL        xs(MAXX)
REAL        xpp(MAXX+1,MAXZ), z(MAXZ), dat(MAXZ*MAXX)

INTEGER, EXTERNAL :: nblank


CALL get_file('Vertical slice',fname,nch)
CALL get_file('Output',sname,nchs)
oname = sname
ncho = nchs

10  WRITE(6,60)
60  FORMAT(' Enter number of horizontal locations wanted (max=99): ',$)
READ(5,*) ns
IF (ns >= MAXX) THEN
  WRITE(*,*) 'Too many locations: max is ',MAXX
  GOTO 10
END IF
IF (ns == 0) STOP
WRITE(6,61)ns
61  FORMAT('Enter the ',i2,' x locations > ',$)
READ(5,*) (xs(i),i=1,ns)

vname = 'C   '
nsrf  = 1
irec  = 1

CALL read_slicev(nsrf,fname,vname,xs,ns,z,dat,nz,irec)

DO i = 1,nz
  xpp(1,i) = z(i)
  i0 = (i-1)*ns
  DO is = 1,ns
    j = i0 + is
    xpp(is+1,i) = dat(j)
  END DO
END DO

nvxpp = ns + 1
xppname(1) = 'Z '
DO i = 1,ns
  WRITE(xppname(i+1),'(a,i2.2)') 'C',i
END DO
title = 'Vertical Profiles'
CALL write_xpp(3,oname(1:ncho),MAXX+1,nvxpp,nz, &
                                     xppname,title,xpp,0)

STOP
END

!-------------------------------------------------------------------------------

SUBROUTINE read_slicev(nsrf,fname,vname,xp,np,z,dat,nz,ir)
USE contri_inc

IMPLICIT NONE

INTEGER :: nsrf, np, nz, nch, nvs
INTEGER :: nrunx
INTEGER :: i, j, ir, ierror, ios, ig, iv, ii, j1,  i0, ip
REAL    :: tx,  dum
CHARACTER*4   vname
CHARACTER*(*) fname
CHARACTER*4   names(100)

REAL      dat(*), xp(*), z(*)

INTEGER, EXTERNAL :: nblank

!----- Open file

nch = nblank(fname)
open(unit=nsrf, file=fname(1:nch), status='OLD', access='DIRECT', &
          recl=128*4, iostat=ierror)
if(ierror /= 0)then
  WRITE(*,*) fname(1:nch),' ',ierror
  WRITE(*,*) 'ERROR OPENING SLICEV FILE'
  STOP
END IF

READ(nsrf,rec=ir,iostat=ios) tx, ncell, m0, n0, &
              xmin, ymin, dxsrf, dysrf, nvs, (names(i),i=1,nvs), nrunx

IF (ios /= 0) THEN
  WRITE(*,*) 'ERROR READING SLICEV FILE'
  STOP
END IF

lrfx = .true.
nrx = 2
rfx = 0.5

IF (n0 >= 0) THEN
  WRITE(*,*) 'NOT A SLICEV FILE'
  STOP
ELSE IF (n0 < 0) THEN
  n0 = iabs(n0)
  lrfy = .false.
  nry = 1
  rfy = 1.0
END IF

lrfxy = lrfx .and. lrfy
nrf = nrx*nry

nrfm = nrf - 1
nrxm = nrx - 1
nrym = nry - 1

ig = 0
DO iv = 1,nvs
  IF (names(iv) == vname) THEN
    ig = iv
  END IF
END DO

IF (ig == 0) THEN
  WRITE(*,*) 'variable not found ',vname
  DO iv = 1,nvs
    WRITE(*,*) iv,names(iv)
  END DO
  STOP
END IF

ir = ir + 1
IF (ncell > 0) THEN
  DO ii = 1,ncell,128
    j1 = min0(ii+127,ncell)
    READ(nsrf,rec=ir) (irg(j), j=ii,j1)
    ir = ir + 1
  END DO

  DO ivar = 1,nvs
    DO ii = 1,ncell,128
      IF (names(ivar) == vname) THEN
        j1 = min0(ii+127,ncell)
        READ(nsrf,rec=ir) (dcc(j), j=ii,j1)
      END IF
      ir = ir + 1
    END DO
  END DO

ELSE

  WRITE(*,*) 'NO CELLS ON SLICEV FILE'
  STOP

END IF

laux = .false.
fcc  = 0.

IF (lrfxy) THEN
  CALL set_grad_xy
ELSE IF (lrfx) THEN
  CALL set_grad_x
ELSE
  CALL set_grad_y
END IF

!------ loop over vertical grid

DO i = 1,n0
  z(i) = ymin + float(i-1)*dysrf
  i0 = (i-1)*np
  DO ip = 1,np
    ii = i0 + ip
    CALL get_point_val(xp(ip),z(i),dat(ii),dum)
  END DO
END DO

nz = n0

RETURN
END

