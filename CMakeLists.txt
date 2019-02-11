cmake_minimum_required(VERSION 3.0)
project(OpenCVProject)
set(CMAKE_CXX_STANDARD 14)
   
find_package( OpenCV REQUIRED)

include_directories(include ${OpenCV_INCLUDE_DIRS} src)

add_executable(program src/main.cpp 
		       src/functions.cpp
		       src/functions.h)
		       
target_link_libraries(program ${OpenCV_LIBS})
