# Install script for directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/licenses" TYPE FILE OPTIONAL RENAME "ffmpeg-license.txt" FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/license.txt")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/licenses" TYPE FILE OPTIONAL RENAME "ffmpeg-readme.txt" FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/readme.txt")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/licenses" TYPE FILE OPTIONAL RENAME "opencl-headers-LICENSE.txt" FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/3rdparty/include/opencl/LICENSE.txt")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/cvconfig.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/opencv2/opencv_modules.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/x86/mingw/lib/OpenCVModules.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/x86/mingw/lib/OpenCVModules.cmake"
         "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/CMakeFiles/Export/x86/mingw/lib/OpenCVModules.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/x86/mingw/lib/OpenCVModules-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/x86/mingw/lib/OpenCVModules.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x86/mingw/lib" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/CMakeFiles/Export/x86/mingw/lib/OpenCVModules.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x86/mingw/lib" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/CMakeFiles/Export/x86/mingw/lib/OpenCVModules-release.cmake")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x86/mingw/lib" TYPE FILE FILES
    "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/win-install/OpenCVConfig-version.cmake"
    "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/win-install/x86/mingw/lib/OpenCVConfig.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/win-install/OpenCVConfig-version.cmake"
    "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/win-install/OpenCVConfig.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/LICENSE")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "scripts" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/CMakeFiles/install/setup_vars_opencv4.cmd")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/zlib/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libjpeg-turbo/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libtiff/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libwebp/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libjasper/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/libpng/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/openexr/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/protobuf/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/3rdparty/quirc/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/include/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/doc/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/data/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/apps/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
