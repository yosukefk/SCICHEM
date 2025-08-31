!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
!*******************************************************************************
!                SCIPPopAreaField
!*******************************************************************************
INTEGER FUNCTION SCIPPopAreaField( userID,grdI,Field,PlotType,contourHead,contourList )

USE field_fd
USE contourlist_fd

IMPLICIT NONE

!DEC# ATTRIBUTES DLLEXPORT :: SCIPPopAreaField

!==============================================================================
! Function Arguments
!==============================================================================
INTEGER,                                                    INTENT( IN    ) :: userID       !USER ID tag
INTEGER,                                                    INTENT( IN    ) :: grdI         !SAG grid ID
TYPE( SCIPPlotFieldT ),                                     INTENT( IN    ) :: Field        !Field descriptor
TYPE( SCIPPlotTypeT ),                                      INTENT( IN    ) :: PlotType     !Plot definition
TYPE( SCIPContourHeaderT ),                                 INTENT( IN    ) :: contourHead  !Contour array header
TYPE( SCIPContourElementT ), DIMENSION(contourHead%number), INTENT( INOUT ) :: contourList  !Contour array

!==============================================================================
! Function calls
!==============================================================================
INTERFACE
  INTEGER FUNCTION PopAreaField( CallerID,grdID,Field,PlotType,contourHead,contourList )
    USE tooluser_fd
    INTEGER,                                                    INTENT( IN    ) :: CallerID     !USER ID tag
    INTEGER,                                                    INTENT( IN    ) :: grdID        !SAG grid ID
    TYPE( SCIPPlotFieldT ),                                     INTENT( IN    ) :: Field        !Field descriptor
    TYPE( SCIPPlotTypeT ),                                      INTENT( IN    ) :: PlotType     !Plot definition
    TYPE( SCIPContourHeaderT ),                                 INTENT( IN    ) :: contourHead  !Contour array header
    TYPE( SCIPContourElementT ), DIMENSION(contourHead%number), TARGET, &
                                                                INTENT( INOUT ) :: contourList  !Contour array
  END FUNCTION PopAreaField
END INTERFACE

SCIPPopAreaField = PopAreaField( userID,grdI,Field,PlotType,contourHead,contourList )

RETURN
END
