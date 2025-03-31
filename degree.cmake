macro(define_parallel_degree)
    if(WIN32)
        execute_process(
            COMMAND
                wmic "cpu" "get" "NumberOfCores"
            OUTPUT_VARIABLE
                _number_of_cpu
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        if (NOT ${_number_of_cpu})
            set(_number_of_cpu 1)
        endif()
    else()
        execute_process(
            COMMAND
                bash "-c" "cat /proc/cpuinfo | grep processor | wc | awk '{print \$1}'"
            OUTPUT_VARIABLE
                _number_of_cpu
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )
        if (NOT ${_number_of_cpu})
            set(_number_of_cpu 1)
        endif()
    endif()

    set(_core_ratio 4)
    if (${_number_of_cpu} GREATER 1 AND ${_number_of_cpu} LESS ${_core_ratio})
        MATH(EXPR _number_of_cpu "${_number_of_cpu} - 1")
    endif()

    if (${_number_of_cpu} GREATER_EQUAL 4)
        MATH(EXPR _number_of_cpu "${_number_of_cpu} - ${_number_of_cpu} / ${_core_ratio}")
    endif()

    lr("Number of cpu ${_number_of_cpu}, set CMAKE_BUIL_PARALLEL_LEVEL")

    set(CMAKE_BUILD_PARALLEL_LEVEL ${_number_of_cpu})

    # Define Ninja job pool
    set_property(GLOBAL PROPERTY JOB_POOLS single_job=1 parallel_jobs=${CMAKE_BUILD_PARALLEL_LEVEL})

endmacro()
