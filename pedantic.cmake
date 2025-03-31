# enable Werror for gcc, see article about it
# https://github.com/cpp-best-practices/cppbestpractices/blob/master/02-Use_the_Tools_Available.md#gcc--clang

if(CMAKE_COMPILER_IS_GNUCXX)

  set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Wno-unused-parameter")
endif()
