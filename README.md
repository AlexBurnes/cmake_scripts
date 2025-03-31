# Abstract

A collection of cmake modules and macros used to build C++ projects

# Version

    0.1.0 intial version

# Usage

Add as submodule

    git submodule init
    git submodule add https://github.com:AlexBurnes/cmake_scripts.git cmake

Place at start of CMakeLists.txt after project():

    include(cmake/modules.cmake)

# Changelog

See [CHANGELOG](CHANGELOG.md)


# Modules

* modules.cmake - append cmake modules directory, load and init: log, color, degree and out_of_source_dir
* colors.cmake - define colors for colored output message
* log.cmake - define log function
* dump.cmake - dump all variables 
* cppcheck.cmake - run cppcheck for project source codes
* degree.cmake  - define parallel jobs
* pedantic.cmake - set pedantic compile flags
* out_of_source_dir.cmake - check build source code out of source directory
* download_project.cmake - https://github.com/Crascit/DownloadProject
