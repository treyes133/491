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
include modules/videoio/CMakeFiles/opencv_test_videoio.dir/depend.make

# Include the progress variables for this target.
include modules/videoio/CMakeFiles/opencv_test_videoio.dir/progress.make

# Include the compile flags for this target's objects.
include modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_camera.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_camera.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_camera.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_camera.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_camera.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_camera.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj


modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_container_avi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_container_avi.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_container_avi.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_container_avi.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_container_avi.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_container_avi.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_container_avi.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj


modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_ffmpeg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_ffmpeg.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_ffmpeg.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_ffmpeg.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_ffmpeg.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_ffmpeg.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_ffmpeg.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj


modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_fourcc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_fourcc.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_fourcc.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_fourcc.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_fourcc.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_fourcc.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_fourcc.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj


modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_gstreamer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_gstreamer.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_gstreamer.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_gstreamer.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_gstreamer.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_gstreamer.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_gstreamer.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj


modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_main.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_main.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_main.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_main.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_main.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_main.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj


modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_mfx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_mfx.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_mfx.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_mfx.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_mfx.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_mfx.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_mfx.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj


modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj: modules/videoio/CMakeFiles/opencv_test_videoio.dir/includes_CXX.rsp
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/test/test_video_io.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -o CMakeFiles\opencv_test_videoio.dir\test\test_video_io.cpp.obj -c C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_video_io.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.i"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -E C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_video_io.cpp > CMakeFiles\opencv_test_videoio.dir\test\test_video_io.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.s"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch  -include "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/videoio/test_precomp.hpp" -S C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio\test\test_video_io.cpp -o CMakeFiles\opencv_test_videoio.dir\test\test_video_io.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.requires:

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.requires
	$(MAKE) -f modules\videoio\CMakeFiles\opencv_test_videoio.dir\build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj


# Object files for target opencv_test_videoio
opencv_test_videoio_OBJECTS = \
"CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj" \
"CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj" \
"CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj" \
"CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj" \
"CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj" \
"CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj" \
"CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj" \
"CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj"

# External object files for target opencv_test_videoio
opencv_test_videoio_EXTERNAL_OBJECTS =

bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make
bin/opencv_test_videoio.exe: lib/libopencv_ts400.a
bin/opencv_test_videoio.exe: lib/libopencv_highgui400.dll.a
bin/opencv_test_videoio.exe: lib/libopencv_videoio400.dll.a
bin/opencv_test_videoio.exe: lib/libopencv_imgcodecs400.dll.a
bin/opencv_test_videoio.exe: lib/libopencv_imgproc400.dll.a
bin/opencv_test_videoio.exe: lib/libopencv_core400.dll.a
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/linklibs.rsp
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/objects1.rsp
bin/opencv_test_videoio.exe: modules/videoio/CMakeFiles/opencv_test_videoio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ..\..\bin\opencv_test_videoio.exe"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\opencv_test_videoio.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/videoio/CMakeFiles/opencv_test_videoio.dir/build: bin/opencv_test_videoio.exe

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/build

modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_camera.cpp.obj.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_container_avi.cpp.obj.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.obj.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.obj.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_gstreamer.cpp.obj.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.obj.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_mfx.cpp.obj.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.obj.requires

.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/clean:
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio && $(CMAKE_COMMAND) -P CMakeFiles\opencv_test_videoio.dir\cmake_clean.cmake
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/clean

modules/videoio/CMakeFiles/opencv_test_videoio.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\videoio C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\videoio\CMakeFiles\opencv_test_videoio.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/depend

