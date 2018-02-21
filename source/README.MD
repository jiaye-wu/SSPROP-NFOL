# SSPROP Original Source
http://www.photonics.umd.edu/wp-content/uploads/software/ssprop/ssprop-3.0.1-source.zip
All modifications for SSPROP-NFOL are described in master/ChangeLog,txt

# FFTW3
http://www.fftw.org/

# Compile Guide for Windows 7/Linux/macOS
Please refer to
[1] https://www.photonics.umd.edu/software/ssprop/
[2] http://lesc.dinfo.unifi.it/wiki/doku.php?id=swbase:ssprop:install/
for guidance.

# Compile Guide Additional Note for Windows 10 64-bit & Newer Versions of MATLAB
1. My recommended compiler for Windows 10 and newer versions of MATLAB is NOT MinGW and GNUMEX, but Windows 10 SDK or Microsoft Visual Studio 2015 C++ Compiler.
2. Windows 10 SDK: https://developer.microsoft.com/en-us/windows/downloads/windows-10-sdk
3. To convert fftw3 .def files to .lib files, use the command in lib.exe provided in Microsoft Visual Studio 2015 (C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin)
  lib /MACHINE:X64 /def:libfftw3-3.def
  lib /MACHINE:X64 /def:libfftw3f-3.def
  lib /MACHINE:X64 /def:libfftw3l-3.def
 use /MACHINE:X86 on 32-bit Windows AND 32-bit MATLAB.
4. Lagacy option for MinGW: https://sourceforge.net/projects/mingw/files/
5. Lagacy option for GNUMEX: https://sourceforge.net/projects/gnumex/
