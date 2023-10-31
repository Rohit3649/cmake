#if cmake can find doxygen in system
find_package(Doxygen)

if (DOXYGEN_FOUND)
    add_custom_target(
        docs
        ${DOXYGEN_EXECUTABLE}
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/docs
    )
endif()


#add_custom_target - Not standard cmake target where we want to compile something. It's utility target to execute something on console or call
# compiler some way
#DOXYGEN_EXECUTABLE - set bt find package operation
#WORKING_DIRECTORY - directory where this target will be launched
#CMAKE_SOURCE_DIR - absolute patch to main CMake directory
#CMAKE_SOURCE_DIR - absolute patch to build directory