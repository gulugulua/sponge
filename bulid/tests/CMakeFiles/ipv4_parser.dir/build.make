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
include tests/CMakeFiles/ipv4_parser.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/ipv4_parser.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/ipv4_parser.dir/flags.make

tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o: tests/CMakeFiles/ipv4_parser.dir/flags.make
tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o: ../tests/ipv4_parser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pjb/sponge/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o"
	cd /home/pjb/sponge/bulid/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o -c /home/pjb/sponge/tests/ipv4_parser.cc

tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.i"
	cd /home/pjb/sponge/bulid/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pjb/sponge/tests/ipv4_parser.cc > CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.i

tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.s"
	cd /home/pjb/sponge/bulid/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pjb/sponge/tests/ipv4_parser.cc -o CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.s

# Object files for target ipv4_parser
ipv4_parser_OBJECTS = \
"CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o"

# External object files for target ipv4_parser
ipv4_parser_EXTERNAL_OBJECTS =

tests/ipv4_parser: tests/CMakeFiles/ipv4_parser.dir/ipv4_parser.cc.o
tests/ipv4_parser: tests/CMakeFiles/ipv4_parser.dir/build.make
tests/ipv4_parser: tests/libspongechecks.a
tests/ipv4_parser: /usr/lib/x86_64-linux-gnu/libpcap.so
tests/ipv4_parser: libsponge/libsponge.a
tests/ipv4_parser: /usr/lib/x86_64-linux-gnu/libpcap.so
tests/ipv4_parser: tests/CMakeFiles/ipv4_parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pjb/sponge/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ipv4_parser"
	cd /home/pjb/sponge/bulid/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ipv4_parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/ipv4_parser.dir/build: tests/ipv4_parser

.PHONY : tests/CMakeFiles/ipv4_parser.dir/build

tests/CMakeFiles/ipv4_parser.dir/clean:
	cd /home/pjb/sponge/bulid/tests && $(CMAKE_COMMAND) -P CMakeFiles/ipv4_parser.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ipv4_parser.dir/clean

tests/CMakeFiles/ipv4_parser.dir/depend:
	cd /home/pjb/sponge/bulid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pjb/sponge /home/pjb/sponge/tests /home/pjb/sponge/bulid /home/pjb/sponge/bulid/tests /home/pjb/sponge/bulid/tests/CMakeFiles/ipv4_parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ipv4_parser.dir/depend

