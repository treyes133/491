# Install script for directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/python

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/python/package/setup.py")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/cv2" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/python/package/cv2/__init__.py")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/cv2" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/python/package/cv2/load_config_py2.py")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/cv2" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/python/package/cv2/load_config_py3.py")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "python" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/cv2" TYPE FILE FILES "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/CMakeFiles/install/python_loader//cv2/config.py")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/.firstpass/python/bindings/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/.firstpass/python/python2/cmake_install.cmake")
  include("C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/.firstpass/python/python3/cmake_install.cmake")

endif()

