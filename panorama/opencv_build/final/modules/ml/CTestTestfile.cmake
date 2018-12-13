# CMake generated Testfile for 
# Source directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/opencv/modules/ml
# Build directory: C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/modules/ml
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_ml "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/bin/opencv_test_ml.exe" "--gtest_output=xml:opencv_test_ml.xml")
set_tests_properties(opencv_test_ml PROPERTIES  LABELS "Main;opencv_ml;Accuracy" WORKING_DIRECTORY "C:/Users/Tomas/Documents/GitHub/491/panorama/opencv_build/final/test-reports/accuracy")
