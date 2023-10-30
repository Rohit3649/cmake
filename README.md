# cmake
cmake to create modern C/C++ Projects


## Generating a Project

cmake [<options>] -S <relative-path-to-source> -B <path-to-build>
source - Directory where main CMake file is located (mostly root dir)
Assuming that a CMakeLists.txt is in the root directory, you can generate a project like the following.

mkdir build
cd build
cmake -S .. -B . # Option 1
cmake .. # Option 2

Assuming that you have already built the CMake project, you can update the generated project.
cd build
cmake .

## Generator for GCC and Clang
// Generator is build system that CMake use user the hood

cd build
cmake -S .. -B . -G "Unix Makefiles" # Option 1
cmake .. -G "Unix Makefiles" # Option 2

## Generator for MSVC

cd build
cmake -S .. -B . -G "Visual Studio 16 2019" # Option 1
cmake .. -G "Visual Studio 16 2019" # Option 2

## Specify the Build Type

Per default, the standard type is in most cases the debug type.
If you want to generate the project, for example, in release mode you have to set the build type.

cd build
cmake -DCMAKE_BUILD_TYPE=Release ..


## Passing Options
If you have set some options in the CMakeLists, you can pass values in the command line.

cd build
cmake -DMY_OPTION=[ON|OFF] ..

-D is used with options and variables both


## Specify the Build Target (Option 1)
The standard build command would build all created targets within the CMakeLists.
If you want to build a specific target, you can do so.

cd build
cmake --build . --target ExternalLibraries_Executable

The target *ExternalLibraries_Executable* is just an example of a possible target name.
Note: All dependent targets will be built beforehand.

## Specify the Build Target (Option 2) Doesn't work on Windows (Generator is not make file)
Besides setting the target within the cmake build command, you could also run the previously generated Makefile (from the generating step).
If you want to build the *ExternalLibraries_Executable*, you could do the following.

cd build
make ExternalLibraries_Executable

## Generate doxygen doc
cd docs
doxygen