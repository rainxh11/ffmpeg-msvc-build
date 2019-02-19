@echo on
rem set up Visual Studio environment for specified toolset and platform
rem see https://www.appveyor.com/docs/lang/cpp/
rem and https://stackoverflow.com/a/46994531
rem (differenes: no need for SDK, use native amd64 instead of x86_amd64)
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" %PLATFORM% 
rem run main build script
C:\msys64\usr\bin\bash -lc "$APPVEYOR_BUILD_FOLDER/build.sh"
@echo off
