cmake_minimum_required(VERSION 3.16)

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD          17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS        OFF)

set(LIBRARY_NAME "Library")
set(EXECUTABLE_NAME Executable) # Executable will be taken as String by default by cmake

option(COMPILE_EXECUTABLE "Whether to compile the executable" OFF)

if (COMPILE_EXECUTABLE)
    message("I am ON")
else()
    message("I am OFF")
endif()


add_subdirectory(src)
add_subdirectory(app)
