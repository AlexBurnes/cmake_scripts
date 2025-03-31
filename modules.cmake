# Modules collector

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
option(CMAKE_DEBUG "debug cmake" OFF)

include(colors)
define_colors()

include(log)

lr("Project source dir: ${PROJECT_SOURCE_DIR}")
lr("Cmake source dir: ${CMAKE_SOURCE_DIR}")
lr("Build dir: ${CMAKE_BINARY_DIR}")
lr("Install dir: ${CMAKE_INSTALL_PREFIX}")

include(out_of_source_dir)
out_of_source_dir("${CMAKE_PROJECT_NAME} requires an out of source build.\n Try:\n\tinit: cmake -B.build -H.\n\tmake: cmake --build .build\n\tinstall: cmake --build .build --target install\n")

include(degree)
define_parallel_degree()

lr("${Blue}Building project ${BoldWhite}${CMAKE_PROJECT_NAME} ${PROJECT_VERSION} ${Green}${CMAKE_BUILD_TYPE} ${White} Degree ${Bold}${CMAKE_BUILD_PARALLEL_LEVEL}${Reset}")

