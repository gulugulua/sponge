# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/pjb/sponge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pjb/sponge/bulid

# Include any dependencies generated for this target.
include tests/CMakeFiles/send_transmit.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/send_transmit.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/send_transmit.dir/flags.make

tests/CMakeFiles/send_transmit.dir/send_transmit.cc.o: tests/CMakeFiles/send_transmit.dir/flags.make
tests/CMakeFiles/send_transmit.dir/send_transmit.cc.o: ../tests/send_transmit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pjb/sponge/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/send_transmit.dir/send_transmit.cc.o"
	cd /home/pjb/sponge/bulid/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/send_transmit.dir/send_transmit.cc.o -c /home/pjb/sponge/tests/send_transmit.cc

tests/CMakeFiles/send_transmit.dir/send_transmit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/send_transmit.dir/send_transmit.cc.i"
	cd /home/pjb/sponge/bulid/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pjb/sponge/tests/send_transmit.cc > CMakeFiles/send_transmit.dir/send_transmit.cc.i

tests/CMakeFiles/send_transmit.dir/send_transmit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/send_transmit.dir/send_transmit.cc.s"
	cd /home/pjb/sponge/bulid/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pjb/sponge/tests/send_transmit.cc -o CMakeFiles/send_transmit.dir/send_transmit.cc.s

# Object files for target send_transmit
send_transmit_OBJECTS = \
"CMakeFiles/send_transmit.dir/send_transmit.cc.o"

# External object files for target send_transmit
send_transmit_EXTERNAL_OBJECTS =

tests/send_transmit: tests/CMakeFiles/send_transmit.dir/send_transmit.cc.o
tests/send_transmit: tests/CMakeFiles/send_transmit.dir/build.make
tests/send_transmit: tests/libspongechecks.a
tests/send_transmit: libsponge/libsponge.a
tests/send_transmit: tests/CMakeFiles/send_transmit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pjb/sponge/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable send_transmit"
	cd /home/pjb/sponge/bulid/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/send_transmit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/send_transmit.dir/build: tests/send_transmit

.PHONY : tests/CMakeFiles/send_transmit.dir/build

tests/CMakeFiles/send_transmit.dir/clean:
	cd /home/pjb/sponge/bulid/tests && $(CMAKE_COMMAND) -P CMakeFiles/send_transmit.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/send_transmit.dir/clean

tests/CMakeFiles/send_transmit.dir/depend:
	cd /home/pjb/sponge/bulid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pjb/sponge /home/pjb/sponge/tests /home/pjb/sponge/bulid /home/pjb/sponge/bulid/tests /home/pjb/sponge/bulid/tests/CMakeFiles/send_transmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/send_transmit.dir/depend

