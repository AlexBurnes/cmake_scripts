# Collection of cmake modules and macroses used to build C++ projects
# Copyright 2025 AlexBurnes@gmail.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# enable Werror for gcc, see article about it
# https://github.com/cpp-best-practices/cppbestpractices/blob/master/02-Use_the_Tools_Available.md#gcc--clang
if("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU" OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Wno-unused-parameter")
    lg("Set pedantic CMAKE_CXX_FLAGS: ${CMAKE_CXX_FLAGS}")
else()
    lw("Unsupported compiler CMAKE_CXX_COMPILER_ID '${CMAKE_CXX_COMPILER_ID}' to set pedantic CMAKE_CXX_FLAGS")
endif()