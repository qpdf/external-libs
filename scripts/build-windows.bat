@echo on
@rem Usage: build-windows {32|64}
setlocal ENABLEDELAYEDEXPANSION
if %1 == 64 (
   call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build\vcvars64.bat"
) else (
   call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build\vcvars32.bat"
)
set MSYS2_PATH_TYPE=inherit
C:\msys64\usr\bin\env.exe MSYSTEM=MINGW64 /bin/bash -l %CD%/scripts/build %1
