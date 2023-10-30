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

## Generator for MSVC

cd build
cmake -S .. -B . -G "Visual Studio 16 2019" # Option 1
cmake .. -G "Visual Studio 16 2019" # Option 2

## Specify the Build Type

Per default, the standard type is in most cases the debug type.
If you want to generate the project, for example, in release mode you have to set the build type.

cd build
cmake -DCMAKE_BUILD_TYPE=Release ..