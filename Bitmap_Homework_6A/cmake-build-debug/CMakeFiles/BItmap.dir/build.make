# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\C++\BItmap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\C++\BItmap\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BItmap.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BItmap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BItmap.dir/flags.make

CMakeFiles/BItmap.dir/main.cpp.obj: CMakeFiles/BItmap.dir/flags.make
CMakeFiles/BItmap.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\C++\BItmap\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BItmap.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\BItmap.dir\main.cpp.obj -c D:\C++\BItmap\main.cpp

CMakeFiles/BItmap.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BItmap.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\C++\BItmap\main.cpp > CMakeFiles\BItmap.dir\main.cpp.i

CMakeFiles/BItmap.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BItmap.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\C++\BItmap\main.cpp -o CMakeFiles\BItmap.dir\main.cpp.s

# Object files for target BItmap
BItmap_OBJECTS = \
"CMakeFiles/BItmap.dir/main.cpp.obj"

# External object files for target BItmap
BItmap_EXTERNAL_OBJECTS =

BItmap.exe: CMakeFiles/BItmap.dir/main.cpp.obj
BItmap.exe: CMakeFiles/BItmap.dir/build.make
BItmap.exe: CMakeFiles/BItmap.dir/linklibs.rsp
BItmap.exe: CMakeFiles/BItmap.dir/objects1.rsp
BItmap.exe: CMakeFiles/BItmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\C++\BItmap\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BItmap.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BItmap.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BItmap.dir/build: BItmap.exe

.PHONY : CMakeFiles/BItmap.dir/build

CMakeFiles/BItmap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BItmap.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BItmap.dir/clean

CMakeFiles/BItmap.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\C++\BItmap D:\C++\BItmap D:\C++\BItmap\cmake-build-debug D:\C++\BItmap\cmake-build-debug D:\C++\BItmap\cmake-build-debug\CMakeFiles\BItmap.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BItmap.dir/depend
