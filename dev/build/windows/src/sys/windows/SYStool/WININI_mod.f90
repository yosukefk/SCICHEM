MODULE WININI
  INTERFACE
!==============================================================================
!==============================================================================
!Use WINDOWs functions 
!==============================================================================
!==============================================================================
!==============================================================================
! GetPrivateProfileInt
!==============================================================================
    FUNCTION GetPrivateProfileInt( lpAppName,lpKeyName,nDefault,lpFileName ) 
!DEC$ ATTRIBUTES DEFAULT                                            :: GetPrivateProfileInt
!DEC$ IF DEFINED (LINUX)                  !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'getprivateprofileint_' :: GetPrivateProfileInt
!DEC$ ELSE                                !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'GetPrivateProfileIntA' :: GetPrivateProfileInt
!DEC$ ENDIF                               !KEEP$
!DEC$ ATTRIBUTES REFERENCE                                          :: lpAppName 
!DEC$ ATTRIBUTES REFERENCE                                          :: lpKeyName
!DEC$ ATTRIBUTES REFERENCE                                          :: lpFileName
      USE winAPI_fd
      INTEGER(UINT) :: GetPrivateProfileInt               
      CHARACTER(*)     lpAppName 
      CHARACTER(*)     lpKeyName 
      INTEGER(SINT)     nDefault 
      CHARACTER(*)     lpFileName   
    END FUNCTION GetPrivateProfileInt

!==============================================================================
! GetPrivateProfileString
!==============================================================================
    FUNCTION GetPrivateProfileString( lpAppName,lpKeyName,lpDefault,lpReturnedString,nSize,lpFileName ) 
!DEC$ ATTRIBUTES DEFAULT                                               :: GetPrivateProfileString
!DEC$ IF DEFINED (LINUX)                  !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'getprivateprofilestring_' :: GetPrivateProfileString
!DEC$ ELSE                                !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'GetPrivateProfileStringA' :: GetPrivateProfileString
!DEC$ ENDIF                               !KEEP$
!DEC$ ATTRIBUTES REFERENCE                                             :: lpAppName 
!DEC$ ATTRIBUTES REFERENCE                                             :: lpKeyName
!DEC$ ATTRIBUTES REFERENCE                                             :: lpDefault
!DEC$ ATTRIBUTES REFERENCE                                             :: lpReturnedString 
!DEC$ ATTRIBUTES REFERENCE                                             :: lpFileName 
      USE winAPI_fd
      INTEGER(BOOL) :: GetPrivateProfileString               
      CHARACTER(*)     lpAppName 
      CHARACTER(*)     lpKeyName 
      CHARACTER(*)     lpDefault 
      CHARACTER(*)     lpReturnedString 
      INTEGER(DWORD)   nSize 
      CHARACTER(*)     lpFileName   
    END FUNCTION GetPrivateProfileString

!==============================================================================
! WritePrivateProfileString
!==============================================================================
    FUNCTION WritePrivateProfileString( lpAppName,lpKeyName,lpString,lpFileName ) 
!DEC$ ATTRIBUTES DEFAULT                                                 :: WritePrivateProfileString
!DEC$ IF DEFINED (LINUX)                  !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'writeprivateprofilestring_' :: WritePrivateProfileString
!DEC$ ELSE                                !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'WritePrivateProfileStringA' :: WritePrivateProfileString
!DEC$ ENDIF                               !KEEP$
!DEC$ ATTRIBUTES REFERENCE                                               :: lpAppName 
!DEC$ ATTRIBUTES REFERENCE                                               :: lpKeyName
!DEC$ ATTRIBUTES REFERENCE                                               :: lpString 
!DEC$ ATTRIBUTES REFERENCE                                               :: lpFileName
      USE winAPI_fd
      INTEGER(BOOL) :: WritePrivateProfileString              
      CHARACTER(*)     lpAppName 
      CHARACTER(*)     lpKeyName 
      CHARACTER(*)     lpString 
      CHARACTER(*)     lpFileName   
    END FUNCTION WritePrivateProfileString

    FUNCTION DeletePrivateProfileString( lpAppName,lpKeyName,lpString,lpFileName ) 
!DEC$ ATTRIBUTES DEFAULT                                                 :: DeletePrivateProfileString
!DEC$ IF DEFINED (LINUX)                  !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'writeprivateprofilestring_' :: DeletePrivateProfileString
!DEC$ ELSE                                !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'WritePrivateProfileStringA' :: DeletePrivateProfileString
!DEC$ ENDIF                               !KEEP$
!DEC$ ATTRIBUTES REFERENCE                                               :: lpAppName 
!DEC$ ATTRIBUTES REFERENCE                                               :: lpKeyName
!DEC$ ATTRIBUTES VALUE                                                   :: lpString 
!DEC$ ATTRIBUTES REFERENCE                                               :: lpFileName
      USE winAPI_fd
      INTEGER(BOOL) :: DeletePrivateProfileString              
      CHARACTER(*)     lpAppName 
      CHARACTER(*)     lpKeyName 
      INTEGER(LPSTR)   lpString 
      CHARACTER(*)     lpFileName   
    END FUNCTION DeletePrivateProfileString

    FUNCTION DeletePrivateProfileSection( lpAppName,lpKeyName,lpString,lpFileName ) 
!DEC$ ATTRIBUTES DEFAULT                                                 :: DeletePrivateProfileSection
!DEC$ IF DEFINED (LINUX)                  !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'writeprivateprofilestring_' :: DeletePrivateProfileSection
!DEC$ ELSE                                !KEEP$
!DEC$ ATTRIBUTES STDCALL, DECORATE, ALIAS : 'WritePrivateProfileStringA' :: DeletePrivateProfileSection
!DEC$ ENDIF                               !KEEP$
!DEC$ ATTRIBUTES REFERENCE                                               :: lpAppName 
!DEC$ ATTRIBUTES VALUE                                                   :: lpKeyName
!DEC$ ATTRIBUTES VALUE                                                   :: lpString 
!DEC$ ATTRIBUTES REFERENCE                                               :: lpFileName
      USE winAPI_fd
      INTEGER(BOOL) :: DeletePrivateProfileSection              
      CHARACTER(*)     lpAppName 
      INTEGER(LPSTR)   lpKeyName 
      INTEGER(LPSTR)   lpString 
      CHARACTER(*)     lpFileName   
    END FUNCTION DeletePrivateProfileSection
  END INTERFACE
END MODULE WININI
