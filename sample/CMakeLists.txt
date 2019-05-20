cmake_minimum_required(VERSION 3.1)
set ( CMAKE_C_COMPILER /usr/bin/gcc )
set ( CMAKE_C_STANDARD 99 )
add_compile_options ( -g -Wall )

set ( PROJECT_NAME sample )
file( GLOB_RECURSE SRC_FILES src/*.c )
set ( INCLUDE_DIRS inc )
set ( LINK_DIRS lib )

project ( $PROJECT_NAME )

include_directories( ${INCLUDE_DIRS} )
link_directories ( ${LINK_DIRS})

set ( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ..)
set ( CMAKE_LIBRARY_OUTPUT_DIRECTORY ..)
set ( CMAKE_RUNTIME_OUTPUT_DIRECTORY ..)

add_executable ( sample.out ${SRC_FILES} )
