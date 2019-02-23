# Quick setup for project using CMake and OpenCV.

### Requirements:
1. OpenCV
   - must be built with the same compiler which will be used in project,
   - under Windows all environment variables must be set correctly
     (i.e. OpenCV_DIR created and bin folder with all dlls added do PATH).
2. Modern C++ compiler with C++14 standard support(MinGW, MSVC, Clang).
3. Build automation program which is able to handle generated make file by CMake
	(should be added to compiler's package and can be run with terminal or using IDE).
4. CMake at least version 3.0.
5. Optional Conan Package Manager.

#### Building:
```
mkdir build
cd build
cmake .. -G "makefile generator" 
cmake --build .
```

#### Building with using Conan to obtain library:
```
mkdir build
cd build
conan install ..
cmake .. 
cmake --build .
```
If CMake won't find OpenCV library it will try to use one obtained with Conan. If there is none, the example won't be built.
#### Examples for makefile generator above:
- Visual Studio 15 2017 Win64(MSCV and nmake configured for Visual Studio)
- MinGW Makefiles
- Unix Makefiles
	
#### For non-unix systems make command should be changed to installed make builder like:
- mingw32-make
- nmake
	
If there is a problem with make builder then probably compiler's bin folder must be added to PATH environment variables.
