!*******************************************************************************
!            Strip NULL CHARACTER to END of a string
!*******************************************************************************
CHARACTER(*) FUNCTION StripNullT( string )

!DEC$ ATTRIBUTES DLLEXPORT :: StripNullT

USE MaxLength_fd

IMPLICIT NONE

CHARACTER(*), INTENT( IN ) :: string

INTEGER nch

CHARACTER(MAX_LARGEF) tempString

tempString = string

nch = INDEX(tempString,CHAR(0)) - 1
IF( nch < 0 )nch = LEN( TRIM(tempString) )

nch = MIN(nch,LEN(tempString),LEN(StripNullT))

StripNullT = ' '
IF( nch > 0 )StripNullT = tempString(1:nch)

!DEC$ IF DEFINED (LINUX)                !KEEP$
!--- Remove DOS carriage return (CR)
tempString = StripNullT

nch = INDEX(tempString,CHAR(13)) - 1
IF( nch < 0 )nch = LEN( TRIM(tempString) )

nch = MIN( nch,LEN(tempString),LEN(StripNullT) )

StripNullT = ' '
IF( nch > 0 )StripNullT = tempString(1:nch)
!DEC$ ENDIF                            !KEEP$

RETURN
END

!*******************************************************************************
!            Strip NULL CHARACTER to END of a string
!*******************************************************************************
CHARACTER(*) FUNCTION StripNull( string )

!DEC$ ATTRIBUTES DLLEXPORT :: StripNull

USE MaxLength_fd

IMPLICIT NONE

CHARACTER(*), INTENT( IN ) :: string

INTEGER nch

CHARACTER(MAX_FILEF) tempString

tempString = string

nch = INDEX(tempString,CHAR(0)) - 1
IF( nch < 0 )nch = LEN( TRIM(tempString) )

nch = MIN( nch,LEN(tempString),LEN(StripNull) )

StripNull = ' '
IF( nch > 0 )StripNull = tempString(1:nch)

!DEC$ IF DEFINED (LINUX)                !KEEP$
!--- Remove DOS carriage return (CR)
tempString = StripNull

nch = INDEX(tempString,CHAR(13)) - 1
IF( nch < 0 )nch = LEN( TRIM(tempString) )

nch = MIN( nch,LEN(tempString),LEN(StripNull) )

StripNull = ' '
IF( nch > 0 )StripNull = tempString(1:nch)
!DEC$ ENDIF                            !KEEP$

RETURN
END

!*******************************************************************************
!            Add NULL CHARACTER to END of a string
!*******************************************************************************
CHARACTER(*) FUNCTION AddNull( string )

!DEC$ ATTRIBUTES DLLEXPORT :: AddNull

USE MaxLength_fd

IMPLICIT NONE

CHARACTER(*), INTENT( IN ) :: string

CHARACTER(MAX_FILEC) tempString

INTEGER nch

tempString = string

nch = INDEX(tempString,CHAR(0)) - 1
IF( nch < 0 )nch = LEN( TRIM(tempString) )

nch = MIN(nch,LEN(tempString)-1,LEN(AddNull)-1)

tempString(nch+1:nch+1) = CHAR(0)

AddNull = tempString(1:nch+1)
IF( nch+1 < LEN(AddNull) )AddNull(nch+2:) = ' '

RETURN
END
!*******************************************************************************
!            Add NULL CHARACTER to END of a string
!*******************************************************************************
CHARACTER(*) FUNCTION AddNullT( string )

!DEC$ ATTRIBUTES DLLEXPORT :: AddNullT

USE MaxLength_fd

IMPLICIT NONE

CHARACTER(*), INTENT( IN ) :: string

CHARACTER(MAX_LARGEF) tempString

INTEGER nch

tempString = string

nch = INDEX(tempString,CHAR(0)) - 1
IF( nch < 0 )nch = LEN( TRIM(tempString) )

nch = MIN(nch,LEN(tempString)-1,LEN(AddNullT)-1)

tempString(nch+1:nch+1) = CHAR(0)

AddNullT = tempString(1:nch+1)
IF( nch+1 < LEN(AddNullT) )AddNullT(nch+2:) = ' '

RETURN
END
  