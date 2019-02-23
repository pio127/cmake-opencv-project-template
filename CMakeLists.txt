cmake_minimum_required(VERSION 3.0)
project(OpenCVProject)
set(CMAKE_CXX_STANDARD 14)
   
find_package(OpenCV REQUIRED)

include_directories(include ${OpenCV_INCLUDE_DIRS} src)

add_executable(test src/main.cpp 
		       src/functions.cpp
		       src/functions.h)
		       
target_link_libraries(test ${OpenCV_LIBS})
