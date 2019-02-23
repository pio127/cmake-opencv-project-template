@ECHO OFF
mkdir build
cd build
cmake .. 
cmake --build
IF ERRORLEVEL 1 (
echo  BUILD FAILED
) ElSE (
test.exe
)
cd..
