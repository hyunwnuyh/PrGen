# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hyunw/perl/PrGen/sample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hyunw/perl/PrGen/sample/build

# Include any dependencies generated for this target.
include CMakeFiles/sample.out.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sample.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sample.out.dir/flags.make

CMakeFiles/sample.out.dir/src/main.c.o: CMakeFiles/sample.out.dir/flags.make
CMakeFiles/sample.out.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hyunw/perl/PrGen/sample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/sample.out.dir/src/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sample.out.dir/src/main.c.o   -c /home/hyunw/perl/PrGen/sample/src/main.c

CMakeFiles/sample.out.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sample.out.dir/src/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hyunw/perl/PrGen/sample/src/main.c > CMakeFiles/sample.out.dir/src/main.c.i

CMakeFiles/sample.out.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sample.out.dir/src/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hyunw/perl/PrGen/sample/src/main.c -o CMakeFiles/sample.out.dir/src/main.c.s

CMakeFiles/sample.out.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/sample.out.dir/src/main.c.o.requires

CMakeFiles/sample.out.dir/src/main.c.o.provides: CMakeFiles/sample.out.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/sample.out.dir/build.make CMakeFiles/sample.out.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/sample.out.dir/src/main.c.o.provides

CMakeFiles/sample.out.dir/src/main.c.o.provides.build: CMakeFiles/sample.out.dir/src/main.c.o


# Object files for target sample.out
sample_out_OBJECTS = \
"CMakeFiles/sample.out.dir/src/main.c.o"

# External object files for target sample.out
sample_out_EXTERNAL_OBJECTS =

../sample.out: CMakeFiles/sample.out.dir/src/main.c.o
../sample.out: CMakeFiles/sample.out.dir/build.make
../sample.out: CMakeFiles/sample.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hyunw/perl/PrGen/sample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../sample.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sample.out.dir/build: ../sample.out

.PHONY : CMakeFiles/sample.out.dir/build

CMakeFiles/sample.out.dir/requires: CMakeFiles/sample.out.dir/src/main.c.o.requires

.PHONY : CMakeFiles/sample.out.dir/requires

CMakeFiles/sample.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sample.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sample.out.dir/clean

CMakeFiles/sample.out.dir/depend:
	cd /home/hyunw/perl/PrGen/sample/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hyunw/perl/PrGen/sample /home/hyunw/perl/PrGen/sample /home/hyunw/perl/PrGen/sample/build /home/hyunw/perl/PrGen/sample/build /home/hyunw/perl/PrGen/sample/build/CMakeFiles/sample.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sample.out.dir/depend

