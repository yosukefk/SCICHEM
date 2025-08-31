SUBROUTINE get_puff_val_sam(matname,IsAGL,isg,xs,ds,ns,nvar)

USE scipuff_fi
USE UtilMtlAux

IMPLICIT NONE

CHARACTER(4)       :: matname
INTEGER            :: ns, nvar
REAL               :: xs(3,ns),ds(nvar,ns)
LOGICAL            :: IsAGL

INTEGER            :: i, imat, isg, itys, itye, ipuf
LOGICAL, EXTERNAL  :: IsLiquid

!------ Materials

DO i = 1,ntypm
  IF (material(i)%cmat == matname) THEN
    imat = i
    EXIT
  END IF
  IF (i == ntypm) THEN
    nError = UK_ERROR
    WRITE(eMessage,*)'Could not find material ',matname
    GO TO 9999
  END IF
END DO

IF (isg > 0)THEN
  itys = material(imat)%ioffp + isg
  itye = itys
  IF (IsLiquid(material(imat)%icls) .AND. isg == 2) THEN
   itye = GetSubgroups(material(imat),mat_aux) + 1
  END IF
ELSE
  itys = material(imat)%ioffp + 1
  itye = material(imat)%ioffp + &
         MAX(1,GetSubgroups(material(imat),mat_aux))
END IF

WRITE(6,*)'Output for puff type',itye

!------ Find point values

DO ipuf = 1,npuf
  IF(puff(ipuf)%ityp >= itys .AND. puff(ipuf)%ityp <= itye)THEN
    CALL find_puff_val(puff(ipuf),IsAGL,xs,ds,ns,nvar)
  END IF
END DO

9999 CONTINUE
RETURN
END

!=======================================================================

SUBROUTINE find_puff_val(p,IsAGL,xsm,dsm,nsm,nvar)
USE scipuff_fi
USE met_fi
USE chem_fi
IMPLICIT NONE

REAL, PARAMETER         :: ARGMAX = 20.

TYPE ( puff_str ) p

INTEGER                 :: nsm, nvar

REAL                    :: xsm(3,nsm),dsm(nvar,nsm)
REAL, DIMENSION(3)      :: xr, xnrm

INTEGER                 :: i,ioff,is,ios
INTEGER                 :: ja,jb,ia,ib,ir
INTEGER                 :: nmc
REAL                    :: cfac,ccfac,ccoc,slfac
REAL                    :: xmap,ymap,xbar,ybar,vbar
REAL                    :: deth,rat,hx,hy,hz, hxx, hyy, hzz
REAL                    :: zp,znrm,zfac
REAL                    :: vs,faci,xs,xp,ys,yp,zr
REAL                    :: arg,fac,facs,facspec,facr
REAL                    :: tsig(6)
REAL(8)                 :: asig(7)
REAL                    :: alpha,beta,args,s
REAL                    :: xn,yn,zn,dy0

LOGICAL                 :: IsAGL
INTEGER, EXTERNAL       :: getPuffifld

INTEGER                              :: mcID, ID
INTEGER, DIMENSION(:), POINTER       :: cID
REAL,  DIMENSION(:), ALLOCATABLE     :: csmp
REAL,  DIMENSION(3)                  :: x_sensor

!------ calculate cdep at grid locations and increment dose

vol  = pi3*SQRT(p%det)
cfac = p%cfo*p%c/vol

ccoc = 0.
hz   = 0.

ccfac = (p%cfo**2)*(p%cc-p%ccb)/vol
ccfac = MAX( ccfac , (ccoc*cfac)**2 )
slfac = p%si*ccfac

CALL mapfac( p%xbar , p%ybar , xmap , ymap )

xbar  = p%xbar
ybar  = p%ybar
vbar  = p%zbar

deth = p%axx*p%ayy - p%axy**2
rat  = 0.5/(p%det*deth)
CALL get_asig(p,asig)

IF (lter) THEN
  CALL get_topogPrj(xbar,ybar,hz,hx,hy)
  CALL grnd_reflect(vbar-hz,asig,hx,hy,xr,xnrm,deth,znrm)
  zfac = 0.5*znrm/(p%det*deth)
END IF

DO is=1,nsm
  xs = xsm(1,is)
  ys = xsm(2,is)
  vs = xsm(3,is)
  xp = (xs-xbar)/xmap
  yp = (ys-ybar)/ymap
  IF (lter) THEN
    CALL get_topogPrj(xs,ys,hz,hx,hy)
    IF (IsAGL) THEN
      vs = vs + hz
    ELSE
      vs = vs - hmin
    END IF
  END IF
  zp = (vs-vbar)
  CALL zi_reflect(vbar,p%zc,p%zc,vs,rat,faci)
  IF (.NOT.lter .OR.(lter .AND. vs>=hz)) THEN
    arg    = p%axx*xp*xp+2.*p%axy*xp*yp+2.*p%axz*xp*zp &
              + p%ayy*yp*yp+2.*p%ayz*yp*zp+p%azz*zp*zp
    IF ( arg < ARGMAX ) THEN
      IF (lter) THEN
        zr   = xnrm(1)*(xp-xr(1)) + xnrm(2)*(yp-xr(2)) &
                   + xnrm(3)*(zp-xr(3))
        zr   = MAX(zr,0.)
        facs = EXP(zfac*zr)
      ELSE
        facs = EXP(-vs*vbar*rat)
      END IF
      fac  = EXP(-arg)*(1.+facs)*(1.+faci)
      dsm(1,is) = dsm(1,is) + fac*cfac
      dsm(2,is) = dsm(2,is) + fac*ccfac
      dsm(3,is) = dsm(3,is) + fac*slfac
      mcID = typeID(p%ityp)%mcID
      IF(  mat_mc%type(mcID) == MC_CHEM )THEN
        ioff = 3
        DO i = 1,mat_mc%nMCtype
          IF( mat_mc%type(i) == MC_CHEM )THEN
            ID  = mat_mc%ID(i)
            nmc  = chemMC(ID,1)%nFast + chemMC(ID,1)%nSlow + chemMC(ID,1)%nEquilibrium
            ioff = ioff + nmc
            IF( ID ==  mcID )EXIT
          END IF
        END DO
        facr = (1.+facs)*(1.+faci)
        ALLOCATE(cID(nmc),csmp(nmc),STAT=ios)
        DO i = 1,nmc
          cID(i)  = i
          csmp(i) = dsm(ioff,is)
        END DO
        DO i = 1,3
          x_sensor(i) = xsm(i,is)
        END DO
        CALL GetChemValMC( p,cID,csmp,fac,facr,x_sensor )
        DO i = 1,nmc
          dsm(ioff,is)= csmp(i)
        END DO
        DEALLOCATE(cID,csmp,STAT=ios)
      END IF
    END IF ! (arg<ARGMAX)
  END IF !(.not.lter .or.(lter .AND. hz<=vs))
END DO ! is=1,nsm

RETURN
END
