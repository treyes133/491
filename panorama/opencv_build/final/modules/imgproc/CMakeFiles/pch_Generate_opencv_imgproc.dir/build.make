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

# Utility rule file for pch_Generate_opencv_imgproc.

# Include the progress variables for this target.
include modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/progress.make

modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc: modules/imgproc/precomp.hpp.gch/opencv_imgproc_Release.gch


modules/imgproc/precomp.hpp.gch/opencv_imgproc_Release.gch: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgproc/src/precomp.hpp
modules/imgproc/precomp.hpp.gch/opencv_imgproc_Release.gch: modules/imgproc/precomp.hpp
modules/imgproc/precomp.hpp.gch/opencv_imgproc_Release.gch: lib/libopencv_imgproc_pch_dephelp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating precomp.hpp.gch/opencv_imgproc_Release.gch"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgproc && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgproc/precomp.hpp.gch
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgproc && C:\MinGW\bin\g++.exe -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" "-D_USE_MATH_DEFINES" "-D__STDC_CONSTANT_MACROS" "-D__STDC_LIMIT_MACROS" "-D__STDC_FORMAT_MACROS" -std=c++11 -isystem"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final" -isystem"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgproc/src" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgproc/include" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgproc" -I"C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/core/include" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wsign-promo -Wuninitialized -Winit-self -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -Wno-missing-field-initializers -fdiagnostics-show-option -fomit-frame-pointer -ffunction-sections -fdata-sections -msse -msse2 -mfpmath=sse -fvisibility=hidden -fvisibility-inlines-hidden -DCVAPI_EXPORTS -x c++-header -o C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgproc/precomp.hpp.gch/opencv_imgproc_Release.gch C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgproc/precomp.hpp

modules/imgproc/precomp.hpp: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgproc/src/precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating precomp.hpp"
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgproc && "C:\Program Files\CMake\bin\cmake.exe" -E copy_if_different C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/imgproc/src/precomp.hpp C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/imgproc/precomp.hpp

pch_Generate_opencv_imgproc: modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc
pch_Generate_opencv_imgproc: modules/imgproc/precomp.hpp.gch/opencv_imgproc_Release.gch
pch_Generate_opencv_imgproc: modules/imgproc/precomp.hpp
pch_Generate_opencv_imgproc: modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/build.make

.PHONY : pch_Generate_opencv_imgproc

# Rule to build all files generated by this target.
modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/build: pch_Generate_opencv_imgproc

.PHONY : modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/build

modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/clean:
	cd /d C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgproc && $(CMAKE_COMMAND) -P CMakeFiles\pch_Generate_opencv_imgproc.dir\cmake_clean.cmake
.PHONY : modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/clean

modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\opencv\modules\imgproc C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgproc C:\Users\Tomas\Documents\GitHub\491\panorama\opencv_build\final\modules\imgproc\CMakeFiles\pch_Generate_opencv_imgproc.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : modules/imgproc/CMakeFiles/pch_Generate_opencv_imgproc.dir/depend

