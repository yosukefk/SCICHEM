!*******************************************************************************
!$RCSfile$
!$Revision$
!$Date$
!*******************************************************************************
SUBROUTINE createNuclearJMPT(grdI,Field,PlotType,Mode,nLine,Line,nPoint,Point )

USE default_fd
USE error_fi
USE field_fd
USE PopLib_fd
USE PopLib
USE contour_fd
USE SCIPresults_fd
USE InitTool_fi
USE message_fd

IMPLICIT NONE

INTEGER,                                                            INTENT( IN    ) :: grdI         !SAG grid ID
TYPE( SCIPPlotFieldT ),                                             INTENT( IN    ) :: Field        !Field definition
TYPE( SCIPPlotTypeT ),                                              INTENT( IN    ) :: PlotType     !Plot definition
INTEGER,                                                            INTENT( IN    ) :: Mode         !Contour Mode
INTEGER,                                                            INTENT( IN    ) :: nLine        !Number of lines
TYPE( SCIPLineT  ), DIMENSION(*),                                   INTENT( IN    ) :: Line         !Lines output array
INTEGER,                                                            INTENT( IN    ) :: nPoint       !Number of points
TYPE( SCIPPointT ), DIMENSION(*),                                   INTENT( IN    ) :: Point        !Points output array

RETURN

END


