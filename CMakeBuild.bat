@ECHO OFF
mkdir buildMinGW
cd buildMinGW
cmake .. -G "MinGW Makefiles"
mingw32-make.exe -j4
IF ERRORLEVEL 1 (
echo  BUILD FAILED
) ElSE (
program.exe
)
cd..