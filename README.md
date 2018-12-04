Quick setup for project using CMake and OpenCV.

### Requirements:
1. OpenCV
   - must be built with the same compiler which will be used in project,
   - under Windows all environment variables must be set correctly
     (i.e. OpenCV_DIR created and bin with dlls added do PATH).
2. C++ compiler(MinGW, MSVC, Clang).
3. Build automation program which is able to handle generated make file by CMake
	(should be added to compiler's package and can be run with terminal or using IDE).
4. CMake at least version 3.0.

Added batch file can be used for Windows with MinGW.
In other case CMake gui program or following commands should be used:
```
mkdir build
cd build
cmake .. -G "nameOfMakefilesGenrator" 
make
```
Examples for nameOfMakefilesGenrator:
 - Visual Studio 15 2017 Win64
 - MinGW Makefiles
 - Unix Makefiles
