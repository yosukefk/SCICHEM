!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
MODULE winAPI_fd
  USE basic_fd, ONLY: TRUE, FALSE, NULL
!==============================================================================
!==============================================================================
!Use Intel WINDOWs function defintions (Intel and not Linux)
!==============================================================================
!==============================================================================
  USE ifwinty, HIDE_TRUE => TRUE, HIDE_FALSE => FALSE, HIDE_NULL=>NULL, HIDE_NO_ERROR => NO_ERROR &
             , HIDEX_ERROR => ERROR
  INTEGER(POINTER_LEN), EXTERNAL :: ADDRESSOF
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
