FIND_PATH(GSM_INCLUDE_DIR gsm/gsm.h)
FIND_LIBRARY(GSM_LIBRARY NAMES gsm)

IF(GSM_INCLUDE_DIR AND GSM_LIBRARY)
	SET(GSM_FOUND TRUE)
ENDIF(GSM_INCLUDE_DIR AND GSM_LIBRARY)

IF(GSM_FOUND)
	IF (NOT Gsm_FIND_QUIETLY)
		MESSAGE(STATUS "Found gsm includes:	${GSM_INCLUDE_DIR}/gsm/config.h")
		MESSAGE(STATUS "Found gsm library:	${GSM_LIBRARY}")
	ENDIF (NOT Gsm_FIND_QUIETLY)
ELSE(GSM_FOUND)
	IF (Gsm_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could NOT find gsm development files")
	ENDIF (Gsm_FIND_REQUIRED)
ENDIF(GSM_FOUND)
