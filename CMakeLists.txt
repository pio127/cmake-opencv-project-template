cmake_minimum_required(VERSION 3.0)
project(OpenCVProject)
set(CMAKE_CXX_STANDARD 14)
#set("OpenCV_DIR" "PATH")

find_package(OpenCV)

if(OpenCV_FOUND)
    include_directories(include ${OpenCV_INCLUDE_DIRS} src)
    add_executable(test src/main.cpp 
                             src/functions.cpp
                             src/functions.h)
    target_link_libraries(test ${OpenCV_LIBS})
else()
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    conan_basic_setup()
        include_directories(include src)
        add_executable(test src/main.cpp 
                                src/functions.cpp
                                src/functions.h)
        target_link_libraries(test ${CONAN_LIBS})
endif()    
