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

# Utility rule file for pch_Generate_opencv_test_imgcodecs.

# Include the progress variables for this target.
include modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/progress.make

modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs: modules/imgcodecs/test_precomp.hpp.gch/opencv_test_imgcodecs_Release.gch


modules/imgcodecs/test_precomp.hpp.gch/opencv_test_imgcodecs_Release.gch: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgcodecs/test/test_precomp.hpp
modules/imgcodecs/test_precomp.hpp.gch/opencv_test_imgcodecs_Release.gch: modules/imgcodecs/test_precomp.hpp
modules/imgcodecs/test_precomp.hpp.gch/opencv_test_imgcodecs_Release.gch: lib/libopencv_test_imgcodecs_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_precomp.hpp.gch/opencv_test_imgcodecs_Release.gch"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgcodecs && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgcodecs/test_precomp.hpp.gch
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgcodecs && C:\MinGW\bin\g++.exe -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" "-D_USE_MATH_DEFINES" "-D__STDC_CONSTANT_MACROS" "-D__STDC_LIMIT_MACROS" "-D__STDC_FORMAT_MACROS" "-DHAVE_WEBP" "-DHAVE_IMGCODEC_HDR" "-DHAVE_IMGCODEC_SUNRASTER" "-DHAVE_IMGCODEC_PXM" "-DHAVE_IMGCODEC_PFM" "-D__OPENCV_TESTS=1" -std=c++11 -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libjasper" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libtiff" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libtiff" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libpng" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libwebp/src" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libjpeg-turbo" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libjpeg-turbo/src" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/zlib" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/zlib" -isystem"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/Half" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/Iex" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/IlmThread" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/Imath" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/IlmImf" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libjasper" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libtiff" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libtiff" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libpng" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libwebp/src" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libjpeg-turbo" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/libjpeg-turbo/src" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/zlib" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/zlib" -isystem"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/Half" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/Iex" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/IlmThread" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/Imath" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/openexr/IlmImf" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/ts/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgcodecs/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgcodecs/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/core/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgproc/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/core/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgproc/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgcodecs/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/videoio/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/highgui/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgcodecs/test" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wsign-promo -Wuninitialized -Winit-self -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -Wno-missing-field-initializers -fdiagnostics-show-option -fomit-frame-pointer -ffunction-sections -fdata-sections -msse -msse2 -mfpmath=sse -fvisibility=hidden -fvisibility-inlines-hidden -Wno-deprecated-declarations -x c++-header -o C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgcodecs/test_precomp.hpp.gch/opencv_test_imgcodecs_Release.gch C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgcodecs/test_precomp.hpp

modules/imgcodecs/test_precomp.hpp: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgcodecs/test/test_precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating test_precomp.hpp"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgcodecs && "C:\Program Files\CMake\bin\cmake.exe" -E copy_if_different C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgcodecs/test/test_precomp.hpp C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgcodecs/test_precomp.hpp

pch_Generate_opencv_test_imgcodecs: modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs
pch_Generate_opencv_test_imgcodecs: modules/imgcodecs/test_precomp.hpp.gch/opencv_test_imgcodecs_Release.gch
pch_Generate_opencv_test_imgcodecs: modules/imgcodecs/test_precomp.hpp
pch_Generate_opencv_test_imgcodecs: modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/build.make

.PHONY : pch_Generate_opencv_test_imgcodecs

# Rule to build all files generated by this target.
modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/build: pch_Generate_opencv_test_imgcodecs

.PHONY : modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/build

modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/clean:
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgcodecs && $(CMAKE_COMMAND) -P CMakeFiles\pch_Generate_opencv_test_imgcodecs.dir\cmake_clean.cmake
.PHONY : modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/clean

modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\imgcodecs C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgcodecs C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgcodecs\CMakeFiles\pch_Generate_opencv_test_imgcodecs.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : modules/imgcodecs/CMakeFiles/pch_Generate_opencv_test_imgcodecs.dir/depend

