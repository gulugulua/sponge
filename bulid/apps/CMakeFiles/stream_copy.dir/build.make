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
include apps/CMakeFiles/stream_copy.dir/depend.make

# Include the progress variables for this target.
include apps/CMakeFiles/stream_copy.dir/progress.make

# Include the compile flags for this target's objects.
include apps/CMakeFiles/stream_copy.dir/flags.make

apps/CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.o: apps/CMakeFiles/stream_copy.dir/flags.make
apps/CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.o: ../apps/bidirectional_stream_copy.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pjb/sponge/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.o"
	cd /home/pjb/sponge/bulid/apps && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.o -c /home/pjb/sponge/apps/bidirectional_stream_copy.cc

apps/CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.i"
	cd /home/pjb/sponge/bulid/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pjb/sponge/apps/bidirectional_stream_copy.cc > CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.i

apps/CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.s"
	cd /home/pjb/sponge/bulid/apps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pjb/sponge/apps/bidirectional_stream_copy.cc -o CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.s

# Object files for target stream_copy
stream_copy_OBJECTS = \
"CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.o"

# External object files for target stream_copy
stream_copy_EXTERNAL_OBJECTS =

apps/libstream_copy.a: apps/CMakeFiles/stream_copy.dir/bidirectional_stream_copy.cc.o
apps/libstream_copy.a: apps/CMakeFiles/stream_copy.dir/build.make
apps/libstream_copy.a: apps/CMakeFiles/stream_copy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pjb/sponge/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libstream_copy.a"
	cd /home/pjb/sponge/bulid/apps && $(CMAKE_COMMAND) -P CMakeFiles/stream_copy.dir/cmake_clean_target.cmake
	cd /home/pjb/sponge/bulid/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stream_copy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/CMakeFiles/stream_copy.dir/build: apps/libstream_copy.a

.PHONY : apps/CMakeFiles/stream_copy.dir/build

apps/CMakeFiles/stream_copy.dir/clean:
	cd /home/pjb/sponge/bulid/apps && $(CMAKE_COMMAND) -P CMakeFiles/stream_copy.dir/cmake_clean.cmake
.PHONY : apps/CMakeFiles/stream_copy.dir/clean

apps/CMakeFiles/stream_copy.dir/depend:
	cd /home/pjb/sponge/bulid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pjb/sponge /home/pjb/sponge/apps /home/pjb/sponge/bulid /home/pjb/sponge/bulid/apps /home/pjb/sponge/bulid/apps/CMakeFiles/stream_copy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/CMakeFiles/stream_copy.dir/depend

