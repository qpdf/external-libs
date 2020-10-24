# Overview

This repository contains the code to build the external libraries used in the official Windows builds. They are triggered automatically using GithubActions.

# Running Manually

Create a 32-bit environment by starting MSVC 32-bit runtime and, from
there, running

```
set MSYS2_PATH_TYPE=inherit
C:\msys64\mingw32
```

Create a 64-bit environment in the same way using `mingw64` instead of `mingw32`.

From Linux, run `./scripts/setup`

From Windows, run `./scripts/build` separately from the 32-bit and 64-bit environments.

After both are done, from Linux, run `./scripts/package`.

To clean up, run `./scripts/clean`.

The resulting `qpdf-external-libs-bin.zip` file can be extracted in
the qpdf source directory for the Windows build. For details, please
see README-windows.txt in the qpdf source distribution.
