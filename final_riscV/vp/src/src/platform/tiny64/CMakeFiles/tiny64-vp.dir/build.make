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
include src/platform/tiny64/CMakeFiles/tiny64-vp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/platform/tiny64/CMakeFiles/tiny64-vp.dir/compiler_depend.make

# Include the progress variables for this target.
include src/platform/tiny64/CMakeFiles/tiny64-vp.dir/progress.make

# Include the compile flags for this target's objects.
include src/platform/tiny64/CMakeFiles/tiny64-vp.dir/flags.make

src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o: src/platform/tiny64/CMakeFiles/tiny64-vp.dir/flags.make
src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o: platform/tiny64/tiny64_main.cpp
src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o: src/platform/tiny64/CMakeFiles/tiny64-vp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/ee6470/test/ESL_HW4-main/vp/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/tiny64 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o -MF CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o.d -o CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o -c /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/tiny64/tiny64_main.cpp

src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.i"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/tiny64 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/tiny64/tiny64_main.cpp > CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.i

src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.s"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/tiny64 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/tiny64/tiny64_main.cpp -o CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.s

# Object files for target tiny64-vp
tiny64__vp_OBJECTS = \
"CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o"

# External object files for target tiny64-vp
tiny64__vp_EXTERNAL_OBJECTS =

bin/tiny64-vp: src/platform/tiny64/CMakeFiles/tiny64-vp.dir/tiny64_main.cpp.o
bin/tiny64-vp: src/platform/tiny64/CMakeFiles/tiny64-vp.dir/build.make
bin/tiny64-vp: src/core/rv64/librv64.a
bin/tiny64-vp: src/platform/common/libplatform-common.a
bin/tiny64-vp: src/core/common/gdb-mc/libgdb-mc.a
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so.1.74.0
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.74.0
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_log.so.1.74.0
bin/tiny64-vp: systemc/src/libsystemc.a
bin/tiny64-vp: src/vendor/softfloat/libsoftfloat.a
bin/tiny64-vp: src/core/common/libcore-common.a
bin/tiny64-vp: systemc/src/libsystemc.a
bin/tiny64-vp: src/core/common/gdb-mc/libgdb/libgdb.a
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.74.0
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.74.0
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.74.0
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.74.0
bin/tiny64-vp: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.74.0
bin/tiny64-vp: src/platform/tiny64/CMakeFiles/tiny64-vp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/ee6470/test/ESL_HW4-main/vp/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/tiny64-vp"
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/tiny64 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tiny64-vp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/platform/tiny64/CMakeFiles/tiny64-vp.dir/build: bin/tiny64-vp
.PHONY : src/platform/tiny64/CMakeFiles/tiny64-vp.dir/build

src/platform/tiny64/CMakeFiles/tiny64-vp.dir/clean:
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/tiny64 && $(CMAKE_COMMAND) -P CMakeFiles/tiny64-vp.dir/cmake_clean.cmake
.PHONY : src/platform/tiny64/CMakeFiles/tiny64-vp.dir/clean

src/platform/tiny64/CMakeFiles/tiny64-vp.dir/depend:
	cd /home/user/ee6470/test/ESL_HW4-main/vp/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/ee6470/test/ESL_HW4-main/vp /home/user/ee6470/test/ESL_HW4-main/vp/src/platform/tiny64 /home/user/ee6470/test/ESL_HW4-main/vp/src /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/tiny64 /home/user/ee6470/test/ESL_HW4-main/vp/src/src/platform/tiny64/CMakeFiles/tiny64-vp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/platform/tiny64/CMakeFiles/tiny64-vp.dir/depend

