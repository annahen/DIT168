# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_SOURCE_DIR = /home/vinny/ada/Projects/DIT168/remote

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default

# Utility rule file for remote.Logic_autogen.

# Include the progress variables for this target.
include CMakeFiles/remote.Logic_autogen.dir/progress.make

CMakeFiles/remote.Logic_autogen: RemoteControlMessages.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and RCC for target remote.Logic"
	/usr/bin/cmake -E cmake_autogen /home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default/CMakeFiles/remote.Logic_autogen.dir ""

RemoteControlMessages.cpp: /home/vinny/ada/Projects/DIT168/remote/RemoteControlMessages.odvd
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating RemoteControlMessages.cpp"
	cluon-msc --cpp-sources --cpp-add-include-file=RemoteControlMessages.hpp --out=/home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default/RemoteControlMessages.cpp /home/vinny/ada/Projects/DIT168/remote/RemoteControlMessages.odvd
	cluon-msc --cpp-headers --out=/home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default/RemoteControlMessages.hpp /home/vinny/ada/Projects/DIT168/remote/RemoteControlMessages.odvd

remote.Logic_autogen: CMakeFiles/remote.Logic_autogen
remote.Logic_autogen: RemoteControlMessages.cpp
remote.Logic_autogen: CMakeFiles/remote.Logic_autogen.dir/build.make

.PHONY : remote.Logic_autogen

# Rule to build all files generated by this target.
CMakeFiles/remote.Logic_autogen.dir/build: remote.Logic_autogen

.PHONY : CMakeFiles/remote.Logic_autogen.dir/build

CMakeFiles/remote.Logic_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/remote.Logic_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/remote.Logic_autogen.dir/clean

CMakeFiles/remote.Logic_autogen.dir/depend:
	cd /home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vinny/ada/Projects/DIT168/remote /home/vinny/ada/Projects/DIT168/remote /home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default /home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default /home/vinny/ada/Projects/DIT168/build-remote-Desktop_Qt_5_9_3_GCC_64bit-Default/CMakeFiles/remote.Logic_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/remote.Logic_autogen.dir/depend

