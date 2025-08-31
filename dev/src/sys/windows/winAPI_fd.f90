!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
MODULE winAPI_fd
  USE basic_fd, ONLY: TRUE, FALSE, NULL
!==============================================================================
!==============================================================================
!Use WINDOWs parameter and structure definitions (Linux or not Intel)
!==============================================================================
!==============================================================================
!
! PARAMETERS
!
  INTEGER, PARAMETER :: POINTER_LEN = 8
  INTEGER, PARAMETER :: LONG_PTR = POINTER_LEN
  INTEGER, PARAMETER :: UINT_PTR = POINTER_LEN
  INTEGER, PARAMETER :: ULONG_PTR= POINTER_LEN
  INTEGER, PARAMETER :: LPVOID   = POINTER_LEN
  INTEGER, PARAMETER :: PVOID    = POINTER_LEN
  INTEGER, PARAMETER :: LPCSTR   = POINTER_LEN
  INTEGER, PARAMETER :: LPSTR    = POINTER_LEN
  INTEGER, PARAMETER :: LPBYTE   = POINTER_LEN
  INTEGER, PARAMETER :: LPDWORD  = POINTER_LEN
  INTEGER, PARAMETER :: HANDLE   = POINTER_LEN

  INTEGER, PARAMETER :: HFILESZ  = 4         ! REAL(4)  WHY?
  INTEGER, PARAMETER :: SFLOAT  = 4          ! REAL(4)
  INTEGER, PARAMETER :: DWORD  = 4           ! INTEGER(4)
  INTEGER, PARAMETER :: ULONG  = 4           ! INTEGER(4)
  INTEGER, PARAMETER :: LONG   = 4           ! INTEGER(4)
  INTEGER, PARAMETER :: UINT   = 4           ! INTEGER(4)
  INTEGER, PARAMETER :: SINT   = 4           ! INTEGER(4)
  INTEGER, PARAMETER :: BOOL   = 4           ! INTEGER(4)
  INTEGER, PARAMETER :: WORD   = 2           ! INTEGER(2)
  INTEGER, PARAMETER :: SHORT  = 2           ! INTEGER(2)
  INTEGER, PARAMETER :: BYTE   = 1           ! INTEGER(1)

  INTEGER, PARAMETER :: FLPARAM  = LONG_PTR
  INTEGER, PARAMETER :: FWPARAM  = UINT_PTR

!==============================================================================
! Basic parameters
!==============================================================================
  INTEGER, PARAMETER :: IDOK  = 1


!==============================================================================
! Drive parameters
!==============================================================================
  INTEGER, PARAMETER :: DRIVE_REMOVABLE = 3
  INTEGER, PARAMETER :: DRIVE_REMOTE    = 4
  INTEGER, PARAMETER :: DRIVE_CDROM     = 5
!==============================================================================
! SECURITY_ATTRIBUTES
!==============================================================================
  TYPE  T_SECURITY_ATTRIBUTES
    SEQUENCE
    INTEGER(DWORD)    :: nLength
    INTEGER(LPVOID)   :: lpSecurityDescriptor
    INTEGER(BOOL)     :: bInheritHandle
  END TYPE  T_SECURITY_ATTRIBUTES

!==============================================================================
! SYSTEMTIME
!==============================================================================
!DEC# PACK:1
  TYPE  T_SYSTEMTIME
    SEQUENCE
    INTEGER(WORD)     :: wYear
    INTEGER(WORD)     :: wMonth
    INTEGER(WORD)     :: wDayOfWeek
    INTEGER(WORD)     :: wDay
    INTEGER(WORD)     :: wHour
    INTEGER(WORD)     :: wMinute
    INTEGER(WORD)     :: wSecond
    INTEGER(WORD)     :: wMilliseconds
  END TYPE  T_SYSTEMTIME
!DEC# PACK:

END MODULE winAPI_fd

MODULE MaxLength_fd

  USE DefSize_fd

  INTEGER, PARAMETER :: SIZE_CNULL = 1
  INTEGER, PARAMETER :: MAX_PATHF  = PATH_MAXLENGTH
  INTEGER, PARAMETER :: MAX_PATHC  = MAX_PATHF + SIZE_CNULL
  INTEGER, PARAMETER :: MAX_FILEF  = PATH_MAXLENGTH
  INTEGER, PARAMETER :: MAX_FILEC  = MAX_FILEF + SIZE_CNULL
  INTEGER, PARAMETER :: MAX_LARGEF = 2*PATH_MAXLENGTH + 12

END MODULE maxLength_fd
