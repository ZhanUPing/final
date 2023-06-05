# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/ee6470/test/ESL_HW4-main/vp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/ee6470/test/ESL_HW4-main/vp/src

# Include any dependencies generated for this target.
include src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/compiler_depend.make

# Include the progress variables for this target.
include src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/progress.make

# Include the compile flags for this target's objects.
include src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/flags.make

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/flags.make
src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o: platform/hifive/vbb-protocol/src/gpio-server.cpp
src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/ee6470/test/ESL_HW4-main/vp/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o -MF CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o.d -o CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o -c /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/hifive/vbb-protocol/src/gpio-server.cpp

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.i"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/hifive/vbb-protocol/src/gpio-server.cpp > CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.i

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.s"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/hifive/vbb-protocol/src/gpio-server.cpp -o CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.s

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/flags.make
src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o: platform/hifive/vbb-protocol/src/readwrite.cpp
src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/ee6470/test/ESL_HW4-main/vp/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o -MF CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o.d -o CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o -c /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/hifive/vbb-protocol/src/readwrite.cpp

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.i"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/hifive/vbb-protocol/src/readwrite.cpp > CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.i

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.s"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/hifive/vbb-protocol/src/readwrite.cpp -o CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.s

# Object files for target virtual-breadboard-server
virtual__breadboard__server_OBJECTS = \
"CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o" \
"CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o"

# External object files for target virtual-breadboard-server
virtual__breadboard__server_EXTERNAL_OBJECTS =

src/platform/hifive/vbb-protocol/libvirtual-breadboard-server.a: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/gpio-server.cpp.o
src/platform/hifive/vbb-protocol/libvirtual-breadboard-server.a: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/src/readwrite.cpp.o
src/platform/hifive/vbb-protocol/libvirtual-breadboard-server.a: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/build.make
src/platform/hifive/vbb-protocol/libvirtual-breadboard-server.a: src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/ee6470/test/ESL_HW4-main/vp/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libvirtual-breadboard-server.a"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && $(CMAKE_COMMAND) -P CMakeFiles/virtual-breadboard-server.dir/cmake_clean_target.cmake
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/virtual-breadboard-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/build: src/platform/hifive/vbb-protocol/libvirtual-breadboard-server.a
.PHONY : src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/build

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/clean:
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol && $(CMAKE_COMMAND) -P CMakeFiles/virtual-breadboard-server.dir/cmake_clean.cmake
.PHONY : src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/clean

src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/depend:
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/ee6470/test/ESL_HW4-main/vp /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/hifive/vbb-protocol /home/user/ee6470/test/ESL_HW4-main/vp/src /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/platform/hifive/vbb-protocol/CMakeFiles/virtual-breadboard-server.dir/depend

