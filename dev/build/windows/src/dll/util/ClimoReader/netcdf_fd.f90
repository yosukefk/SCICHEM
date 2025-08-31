!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
MODULE netcdf_fd

!------ Interface block for netCDF calls

INCLUDE 'netcdf.inc'

INTERFACE

  FUNCTION nc_inq_libvers()   !C character function
    USE basic_fd
!DEC$ ATTRIBUTES C, DECORATE, ALIAS : 'nc_inq_libvers' :: nc_inq_libvers
    INTEGER(LEN_ADDRESS) :: nc_inq_libvers
  END FUNCTION nc_inq_libvers

  FUNCTION nc_strerror( ios )   !C character function
    USE basic_fd
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_strerror' :: nc_strerror
!DEC$ ATTRIBUTES VALUE :: ios
    INTEGER(LEN_ADDRESS) :: nc_strerror
    INTEGER, INTENT( IN )  :: ios
  END FUNCTION nc_strerror

  INTEGER FUNCTION nc_open( fname,omode,fid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_open' :: nc_open
!DEC$ ATTRIBUTES REFERENCE :: fname
!DEC$ ATTRIBUTES VALUE     :: omode
!DEC$ ATTRIBUTES REFERENCE :: fid
    CHARACTER(*), INTENT( IN )  :: fname
    INTEGER,      INTENT( IN )  :: omode
    INTEGER,      INTENT( OUT ) :: fid
  END FUNCTION nc_open

  INTEGER FUNCTION nc_close( fid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_close' :: nc_close
!DEC$ ATTRIBUTES VALUE :: fid
    INTEGER, INTENT( IN ) :: fid
  END FUNCTION nc_close

  INTEGER FUNCTION nc_inq( fid,ndims,nvars,natts,unlimdimID )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq' :: nc_inq
!DEC$ ATTRIBUTES VALUE     :: fid
!DEC$ ATTRIBUTES REFERENCE :: ndims, nvars, natts, unlimdimID
    INTEGER, INTENT( IN )  :: fid
    INTEGER, INTENT( OUT ) :: ndims, nvars, natts, unlimdimID
  END FUNCTION nc_inq

  INTEGER FUNCTION nc_inq_var( fid,varid,varnam,ivtype,ndims,dimids,natts )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_var' :: nc_inq_var
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: varnam
!DEC$ ATTRIBUTES REFERENCE :: ivtype, ndims, natts
!DEC$ ATTRIBUTES REFERENCE :: dimids
    INTEGER,               INTENT( IN  ) :: fid, varid
    CHARACTER(*),          INTENT( OUT ) :: varnam
    INTEGER,               INTENT( OUT ) :: ivtype, ndims, natts
    INTEGER, DIMENSION(*), INTENT( OUT ) :: dimids
  END FUNCTION nc_inq_var

  INTEGER FUNCTION nc_inq_varid( fid,varnam,varid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_varid' :: nc_inq_varid
!DEC$ ATTRIBUTES VALUE     :: fid
!DEC$ ATTRIBUTES REFERENCE :: varnam
!DEC$ ATTRIBUTES REFERENCE :: varid
    INTEGER,      INTENT( IN  ) :: fid
    CHARACTER(*), INTENT( IN  ) :: varnam
    INTEGER,      INTENT( OUT ) :: varid
  END FUNCTION nc_inq_varid

  INTEGER FUNCTION nc_inq_vartype( fid,varid,ivtype )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_vartype' :: nc_inq_vartype
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: ivtype
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER,               INTENT( OUT ) :: ivtype
  END FUNCTION nc_inq_vartype

  INTEGER FUNCTION nc_inq_attname( fid,iv,attnum,attname )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_attname' :: nc_inq_attname
!DEC$ ATTRIBUTES VALUE     :: fid, iv, attnum
!DEC$ ATTRIBUTES REFERENCE :: attname
    INTEGER,      INTENT( IN  ) :: fid, iv, attnum
    CHARACTER(*), INTENT( OUT ) :: attname
  END FUNCTION nc_inq_attname

  INTEGER FUNCTION nc_inq_atttype( fid,varid,attname,atttype )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_atttype' :: nc_inq_atttype
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES REFERENCE :: atttype
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    INTEGER,      INTENT( OUT ) :: atttype
  END FUNCTION nc_inq_atttype

  INTEGER FUNCTION nc_get_att_text( fid,varid,attname,string )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_att_text' :: nc_get_att_text
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES REFERENCE :: string
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    CHARACTER(*), INTENT( OUT ) :: string
  END FUNCTION nc_get_att_text

  INTEGER FUNCTION nc_get_att_float( fid,varid,attname,attval )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_att_float' :: nc_get_att_float
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES REFERENCE :: attval
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    REAL,         INTENT( OUT ) :: attval
  END FUNCTION nc_get_att_float

  INTEGER FUNCTION nc_get_att_short( fid,varid,attname,attval )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_att_short' :: nc_get_att_short
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES REFERENCE :: attval
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    INTEGER(2),   INTENT( OUT ) :: attval
  END FUNCTION nc_get_att_short

  INTEGER FUNCTION nc_get_att_int( fid,varid,attname,attval )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_att_int' :: nc_get_att_int
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES REFERENCE :: attval
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    INTEGER,      INTENT( OUT ) :: attval
  END FUNCTION nc_get_att_int

  INTEGER FUNCTION nc_inq_dim( fid,dimid,dimname,dimlen )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_dim' :: nc_inq_dim
!DEC$ ATTRIBUTES VALUE     :: fid, dimid
!DEC$ ATTRIBUTES REFERENCE :: dimname
!DEC$ ATTRIBUTES REFERENCE :: dimlen
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, dimid
    CHARACTER(*),          INTENT( OUT ) :: dimname
    INTEGER(LEN_ADDRESS),  INTENT( OUT ) :: dimlen
  END FUNCTION nc_inq_dim

  INTEGER FUNCTION nc_inq_dimid( fid,dimname,dimid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_dimid' :: nc_inq_dimid
!DEC$ ATTRIBUTES VALUE     :: fid
!DEC$ ATTRIBUTES REFERENCE :: dimname
!DEC$ ATTRIBUTES REFERENCE :: dimid
    INTEGER,               INTENT( IN  ) :: fid
    CHARACTER(*),          INTENT( IN  ) :: dimname
    INTEGER,               INTENT( OUT ) :: dimid
  END FUNCTION nc_inq_dimid

  INTEGER FUNCTION nc_get_vara_double( fid,varid,istart,icount,array )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_vara_double' :: nc_get_vara_double
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: array
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    REAL(8), DIMENSION(icount(1),icount(2),icount(3),*), INTENT( OUT ) :: array
  END FUNCTION nc_get_vara_double

  INTEGER FUNCTION nc_get_vara_float( fid,varid,istart,icount,array )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_vara_float' :: nc_get_vara_float
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: array
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    REAL, DIMENSION(icount(1),icount(2),icount(3),*), INTENT( OUT ) :: array
  END FUNCTION nc_get_vara_float

  INTEGER FUNCTION nc_get_vara_short( fid,varid,istart,icount,array )
     USE basic_fd
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_vara_short' :: nc_get_vara_short
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: array
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    INTEGER(2), DIMENSION(icount(1),icount(2),icount(3),*), INTENT( OUT ) :: array
  END FUNCTION nc_get_vara_short

  INTEGER FUNCTION nc_get_vara_ubyte( fid,varid,istart,icount,array )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_vara_ubyte' :: nc_get_vara_ubyte
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: array
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    INTEGER(1), DIMENSION(icount(1),icount(2),icount(3),*), INTENT( OUT ) :: array
  END FUNCTION nc_get_vara_ubyte

  INTEGER FUNCTION nc_get_vara_text( fid,varid,istart,icount,string )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_get_vara_text' :: nc_get_vara_text
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: string
    USE basic_fd
    INTEGER,      INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    CHARACTER(*), INTENT( OUT ) :: string
  END FUNCTION

  INTEGER FUNCTION nc_create( fname,omode,fid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_create' :: nc_create
!DEC$ ATTRIBUTES REFERENCE :: fname
!DEC$ ATTRIBUTES VALUE     :: omode
!DEC$ ATTRIBUTES REFERENCE :: fid
    CHARACTER(*), INTENT( IN )  :: fname
    INTEGER,      INTENT( IN )  :: omode
    INTEGER,      INTENT( OUT ) :: fid
  END FUNCTION nc_create

  INTEGER FUNCTION nc_def_dim( fid,dimname,dimlen,dimid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_def_dim' :: nc_def_dim
!DEC$ ATTRIBUTES VALUE     :: fid
!DEC$ ATTRIBUTES REFERENCE :: dimname
!DEC$ ATTRIBUTES VALUE     :: dimlen
!DEC$ ATTRIBUTES REFERENCE :: dimid
    INTEGER,               INTENT( IN  ) :: fid
    CHARACTER(*),          INTENT( IN  ) :: dimname
    INTEGER,               INTENT( IN  ) :: dimlen
    INTEGER,               INTENT( OUT ) :: dimid
  END FUNCTION nc_def_dim

  INTEGER FUNCTION nc_def_var( fid,varname,ivtype,ndims,dimids,varid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_def_var' :: nc_def_var
!DEC$ ATTRIBUTES VALUE     :: fid
!DEC$ ATTRIBUTES REFERENCE :: varname
!DEC$ ATTRIBUTES VALUE     :: ivtype
!DEC$ ATTRIBUTES VALUE     :: ndims
!DEC$ ATTRIBUTES REFERENCE :: dimids
!DEC$ ATTRIBUTES REFERENCE :: varid
    INTEGER,               INTENT( IN  ) :: fid
    CHARACTER(*),          INTENT( IN  ) :: varname
    INTEGER,               INTENT( IN  ) :: ivtype
    INTEGER,               INTENT( IN  ) :: ndims
    INTEGER, DIMENSION(*), INTENT( IN  ) :: dimids
    INTEGER,               INTENT( OUT ) :: varid
  END FUNCTION nc_def_var

  INTEGER FUNCTION nc_redef( fid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_redef' :: nc_redef
!DEC$ ATTRIBUTES VALUE :: fid
    INTEGER, INTENT( IN ) :: fid
  END FUNCTION nc_redef

  INTEGER FUNCTION nc_enddef( fid )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_enddef' :: nc_enddef
!DEC$ ATTRIBUTES VALUE :: fid
    INTEGER, INTENT( IN ) :: fid
  END FUNCTION nc_enddef

  INTEGER FUNCTION nc_put_vara_int( fid,varid,istart,icount,array )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_put_vara_int' :: nc_put_vara_int
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: array
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    INTEGER, DIMENSION(icount(1),icount(2),icount(3),*), INTENT( IN ) :: array
  END FUNCTION nc_put_vara_int

  INTEGER FUNCTION nc_put_vara_float( fid,varid,istart,icount,array )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_put_vara_float' :: nc_put_vara_float
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: array
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    REAL, DIMENSION(icount(1),icount(2),icount(3),*), INTENT( IN ) :: array
  END FUNCTION nc_put_vara_float

  INTEGER FUNCTION nc_put_vara_double( fid,varid,istart,icount,array )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_put_vara_double' :: nc_put_vara_double
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: istart, icount
!DEC$ ATTRIBUTES REFERENCE :: array
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, varid
    INTEGER(LEN_ADDRESS), DIMENSION(*), INTENT( IN  ) :: istart, icount
    REAL(KIND=8), DIMENSION(icount(1),icount(2),icount(3),*), INTENT( IN ) :: array
  END FUNCTION nc_put_vara_double

  INTEGER FUNCTION nc_put_var_double( fid,varid,array )
!DEC$ ATTRIBUTES C, ALIAS:'nc_put_var_double' :: nc_put_var_double
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: val
    USE basic_fd
    INTEGER,      INTENT( IN ) :: fid, varid
    REAL(KIND=8), DIMENSION(*), INTENT( IN ) :: array
  END FUNCTION nc_put_var_double

  INTEGER FUNCTION nc_put_var_int( fid,varid,array )
!DEC$ ATTRIBUTES C, ALIAS:'nc_put_var_int' :: nc_put_var_int
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: val
    USE basic_fd
    INTEGER,      INTENT( IN ) :: fid, varid
    INTEGER, DIMENSION(*), INTENT( IN ) :: array
  END FUNCTION nc_put_var_int

  INTEGER FUNCTION nc_put_att_int( fid,varid,attname,alen,ivtype,attval )  !*** attval can be an array ***
!DEC$ ATTRIBUTES C, ALIAS:'nc_put_att_int' :: nc_put_att_int
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES VALUE     :: ivtype
!DEC$ ATTRIBUTES VALUE     :: alen
!DEC$ ATTRIBUTES REFERENCE :: attval
    USE basic_fd
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    INTEGER,      INTENT( IN  ) :: ivtype
    INTEGER,      INTENT( IN  ) :: alen
    INTEGER, DIMENSION(*), INTENT( IN ) :: attval
  END FUNCTION nc_put_att_int

  INTEGER FUNCTION nc_put_att_float( fid,varid,attname,alen,ivtype,attval )  !*** attval can be an array ***
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_put_att_float' :: nc_put_att_float
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES VALUE     :: ivtype
!DEC$ ATTRIBUTES VALUE     :: alen
!DEC$ ATTRIBUTES REFERENCE :: attval
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    INTEGER,      INTENT( IN  ) :: ivtype
    INTEGER,      INTENT( IN  ) :: alen
    REAL, DIMENSION(*), INTENT( IN ) :: attval
  END FUNCTION nc_put_att_float

  INTEGER FUNCTION nc_put_att_double( fid,varid,attname,alen,ivtype,attval )  !*** attval can be an array ***
!DEC$ ATTRIBUTES C, ALIAS:'nc_put_att_double' :: nc_put_att_double
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES VALUE     :: ivtype
!DEC$ ATTRIBUTES VALUE     :: alen
!DEC$ ATTRIBUTES REFERENCE :: attval
    USE basic_fd
    INTEGER,      INTENT( IN  ) :: fid, varid
    CHARACTER(*), INTENT( IN  ) :: attname
    INTEGER,      INTENT( IN  ) :: ivtype
    INTEGER,      INTENT( IN  ) :: alen
    REAL(KIND=8), DIMENSION(*), INTENT( IN ) :: attval
  END FUNCTION nc_put_att_double

  INTEGER FUNCTION nc_put_att_text( fid,varid,attname,slen,string )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_put_att_text' :: nc_put_att_text
!DEC$ ATTRIBUTES VALUE     :: fid, varid
!DEC$ ATTRIBUTES REFERENCE :: attname
!DEC$ ATTRIBUTES VALUE     :: slen
!DEC$ ATTRIBUTES REFERENCE :: string
    INTEGER,      INTENT( IN ) :: fid, varid
    CHARACTER(*), INTENT( IN ) :: attname
    INTEGER,      INTENT( IN ) :: slen
    CHARACTER(*), INTENT( IN ) :: string
  END FUNCTION nc_put_att_text

  INTEGER FUNCTION nc_inq_dimlen( fid,dimid,nlen )
!DEC$ ATTRIBUTES C, DECORATE, ALIAS:'nc_inq_dimlen' :: nc_inq_dimlen
!DEC$ ATTRIBUTES VALUE     :: fid, dimid
!DEC$ ATTRIBUTES REFERENCE :: nlen
    USE basic_fd
    INTEGER,               INTENT( IN  ) :: fid, dimid
    INTEGER(LEN_ADDRESS),  INTENT( OUT ) :: nlen
  END FUNCTION nc_inq_dimlen

END INTERFACE

END MODULE netcdf_fd
