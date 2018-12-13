# CMake generated Testfile for 
# Source directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/gapi
# Build directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/gapi
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_gapi "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/bin/opencv_test_gapi.exe" "--gtest_output=xml:opencv_test_gapi.xml")
set_tests_properties(opencv_test_gapi PROPERTIES  LABELS "Main;opencv_gapi;Accuracy" WORKING_DIRECTORY "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/test-reports/accuracy")
add_test(opencv_perf_gapi "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/bin/opencv_perf_gapi.exe" "--gtest_output=xml:opencv_perf_gapi.xml")
set_tests_properties(opencv_perf_gapi PROPERTIES  LABELS "Main;opencv_gapi;Performance" WORKING_DIRECTORY "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/test-reports/performance")
add_test(opencv_sanity_gapi "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/bin/opencv_perf_gapi.exe" "--gtest_output=xml:opencv_perf_gapi.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_gapi PROPERTIES  LABELS "Main;opencv_gapi;Sanity" WORKING_DIRECTORY "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/test-reports/sanity")
