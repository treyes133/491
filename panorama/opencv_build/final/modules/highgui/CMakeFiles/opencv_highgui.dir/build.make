# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final

# Include any dependencies generated for this target.
include modules/highgui/CMakeFiles/opencv_highgui.dir/depend.make

# Include the progress variables for this target.
include modules/highgui/CMakeFiles/opencv_highgui.dir/progress.make

# Include the compile flags for this target's objects.
include modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/includes_CXX.rsp
modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/highgui/src/window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -o CMakeFiles\opencv_highgui.dir\src\window.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\window.cpp

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui.dir/src/window.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\window.cpp > CMakeFiles\opencv_highgui.dir\src\window.cpp.i

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui.dir/src/window.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\window.cpp -o CMakeFiles\opencv_highgui.dir\src\window.cpp.s

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.requires

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.provides: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.requires
	$(MAKE) -f modules\highgui\CMakeFiles\opencv_highgui.dir\build.make modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.provides

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.provides.build: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj


modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/includes_CXX.rsp
modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/highgui/src/roiSelector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -o CMakeFiles\opencv_highgui.dir\src\roiSelector.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\roiSelector.cpp

modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\roiSelector.cpp > CMakeFiles\opencv_highgui.dir\src\roiSelector.cpp.i

modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\roiSelector.cpp -o CMakeFiles\opencv_highgui.dir\src\roiSelector.cpp.s

modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.requires

modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.provides: modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.requires
	$(MAKE) -f modules\highgui\CMakeFiles\opencv_highgui.dir\build.make modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.provides

modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.provides.build: modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj


modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/includes_CXX.rsp
modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/highgui/src/window_w32.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -o CMakeFiles\opencv_highgui.dir\src\window_w32.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\window_w32.cpp

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\window_w32.cpp > CMakeFiles\opencv_highgui.dir\src\window_w32.cpp.i

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui\src\window_w32.cpp -o CMakeFiles\opencv_highgui.dir\src\window_w32.cpp.s

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.requires

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.provides: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.requires
	$(MAKE) -f modules\highgui\CMakeFiles\opencv_highgui.dir\build.make modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.provides

modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.provides.build: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj


modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj: modules/highgui/vs_version.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building RC object modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\windres.exe  -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui\vs_version.rc CMakeFiles\opencv_highgui.dir\vs_version.rc.obj

modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.requires

modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.provides: modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.requires
	$(MAKE) -f modules\highgui\CMakeFiles\opencv_highgui.dir\build.make modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.provides

modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.provides.build: modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj


modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/flags.make
modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj: modules/highgui/CMakeFiles/opencv_highgui.dir/includes_CXX.rsp
modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj: modules/highgui/opencv_highgui_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -o CMakeFiles\opencv_highgui.dir\opencv_highgui_main.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui\opencv_highgui_main.cpp

modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui\opencv_highgui_main.cpp > CMakeFiles\opencv_highgui.dir\opencv_highgui_main.cpp.i

modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/highgui/precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui\opencv_highgui_main.cpp -o CMakeFiles\opencv_highgui.dir\opencv_highgui_main.cpp.s

modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.requires:

.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.requires

modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.provides: modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.requires
	$(MAKE) -f modules\highgui\CMakeFiles\opencv_highgui.dir\build.make modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.provides.build
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.provides

modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.provides.build: modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj


# Object files for target opencv_highgui
opencv_highgui_OBJECTS = \
"CMakeFiles/opencv_highgui.dir/src/window.cpp.obj" \
"CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj" \
"CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj" \
"CMakeFiles/opencv_highgui.dir/vs_version.rc.obj" \
"CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj"

# External object files for target opencv_highgui
opencv_highgui_EXTERNAL_OBJECTS =

bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/build.make
bin/libopencv_highgui400.dll: lib/libopencv_videoio400.dll.a
bin/libopencv_highgui400.dll: lib/libopencv_imgcodecs400.dll.a
bin/libopencv_highgui400.dll: lib/libopencv_imgproc400.dll.a
bin/libopencv_highgui400.dll: lib/libopencv_core400.dll.a
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/linklibs.rsp
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/objects1.rsp
bin/libopencv_highgui400.dll: modules/highgui/CMakeFiles/opencv_highgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library ..\..\bin\libopencv_highgui400.dll"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\opencv_highgui.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/highgui/CMakeFiles/opencv_highgui.dir/build: bin/libopencv_highgui400.dll

.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/build

modules/highgui/CMakeFiles/opencv_highgui.dir/requires: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window.cpp.obj.requires
modules/highgui/CMakeFiles/opencv_highgui.dir/requires: modules/highgui/CMakeFiles/opencv_highgui.dir/src/roiSelector.cpp.obj.requires
modules/highgui/CMakeFiles/opencv_highgui.dir/requires: modules/highgui/CMakeFiles/opencv_highgui.dir/src/window_w32.cpp.obj.requires
modules/highgui/CMakeFiles/opencv_highgui.dir/requires: modules/highgui/CMakeFiles/opencv_highgui.dir/vs_version.rc.obj.requires
modules/highgui/CMakeFiles/opencv_highgui.dir/requires: modules/highgui/CMakeFiles/opencv_highgui.dir/opencv_highgui_main.cpp.obj.requires

.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/requires

modules/highgui/CMakeFiles/opencv_highgui.dir/clean:
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui && $(CMAKE_COMMAND) -P CMakeFiles\opencv_highgui.dir\cmake_clean.cmake
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/clean

modules/highgui/CMakeFiles/opencv_highgui.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\highgui C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\highgui\CMakeFiles\opencv_highgui.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : modules/highgui/CMakeFiles/opencv_highgui.dir/depend

