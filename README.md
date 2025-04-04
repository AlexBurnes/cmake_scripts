# Abstract

Collection of CMake modules and macros used to build C++ projects.

# Version

0.1.1 

# Usage

Add as a submodule

    git submodule init
    git submodule add https://github.com/AlexBurnes/cmake_scripts.git cmake

Place at the beginning of CMakeLists.txt after project():

    include(cmake/modules.cmake)

# Changelog

See [CHANGELOG](CHANGELOG.md)


# Modules

* **modules.cmake**: Append CMake modules directory, load and initilize: log, color, degree and out_of_source_dir.
* **colors.cmake**: Define colors for colored output messages.
* **log.cmake**: Define log functions.
* **dump.cmake**: Dump all CMake variables.
* **cppcheck.cmake**: Run CppCheck on project source codes.
* **degree.cmake**: Define parallel jobs.
* **pedantic.cmake**: Set pedantic compile flags.
* **out_of_source_dir.cmake**: Check if buildin source code outside the source directory.
* **download_project.cmake**: Download project via Git submodule, https://github.com/Crascit/DownloadProject

# License 
This scripts is distributed under the [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0), see [LICENSE](https://github.com:AlexBurnes/cmake_scripts/blob/master/LICENSE) for more information.