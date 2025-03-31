option(CMAKE_DEBUG "log debug mode" OFF)

macro(lg _text)
    message("${_text}")
endmacro()

macro(lr _text)
    message(STATUS "${Bold}${_text}${Reset}")
endmacro()

macro(ld _text)
    if(CMAKE_DEBUG)
        string(REPLACE "${PROJECT_SOURCE_DIR}" "." _LIST_FILE "${CMAKE_CURRENT_LIST_FILE}")
        message("${Yellow}DEBUG: ${_LIST_FILE}:${CMAKE_CURRENT_LIST_LINE} ${_text}${Reset}")
    endif()
endmacro()

macro(le _text)
    message(SEND_ERROR "${Red}${_text}${Reset}")
endmacro()

macro(lf _text)
    message(FATAL_ERROR "${Red}${Bold}${_text}${Reset}")
endmacro()
