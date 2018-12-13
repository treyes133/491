# CMake generated Testfile for 
# Source directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/dnn
# Build directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/dnn
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_dnn "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/bin/opencv_test_dnn.exe" "--gtest_output=xml:opencv_test_dnn.xml")
set_tests_properties(opencv_test_dnn PROPERTIES  LABELS "Main;opencv_dnn;Accuracy" WORKING_DIRECTORY "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/test-reports/accuracy")
add_test(opencv_perf_dnn "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/bin/opencv_perf_dnn.exe" "--gtest_output=xml:opencv_perf_dnn.xml")
set_tests_properties(opencv_perf_dnn PROPERTIES  LABELS "Main;opencv_dnn;Performance" WORKING_DIRECTORY "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/test-reports/performance")
add_test(opencv_sanity_dnn "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/bin/opencv_perf_dnn.exe" "--gtest_output=xml:opencv_perf_dnn.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_dnn PROPERTIES  LABELS "Main;opencv_dnn;Sanity" WORKING_DIRECTORY "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/test-reports/sanity")
