cmake_minimum_required( VERSION 3.13 )

set(GCC_LOCATION "/tools/gcc/redhat/8/10.1.0/")
set(CMAKE_C_COMPILER "/tools/gcc/redhat/8/10.1.0/bin/gcc")
set(CMAKE_CXX_COMPILER "/tools/gcc/redhat/8/10.1.0/bin/g++")

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(cpp_project VERSION 0.0.1 LANGUAGES CXX )

include(conan.cmake)
conan_cmake_run(CONANFILE conanfile.txt
		BASIC_SETUP CMAKE_TARGETS UPDATE
                PROFILE ${CMAKE_SOURCE_DIR}/conan_profile
                BUILD missing)

add_subdirectory(src)
