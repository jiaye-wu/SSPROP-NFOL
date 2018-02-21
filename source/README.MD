# SSPROP Original Source
SSPROP from University of Maryland is a general-purpose symmetrized split-step software routine that can be invoked directly from Matlab to solve the nonlinear Schrödinger equation. Unlike conventional Matlab scripts that are interpreted at runtime, SSPROP is a compiled program written in C that can be called directly from Matlab. It therefore retains the speed and efficiency of compiled program, while allowing access to the full range of Matlab graphing and vector manipulation routines. Benchmark tests show that the program is up to 10-20x faster than an equivalent Matlab m-file script that performs the same calculations.

http://www.photonics.umd.edu/wp-content/uploads/software/ssprop/ssprop-3.0.1-source.zip

All modifications for SSPROP-NFOL are described in master/ChangeLog,txt

# FFTW3
FFTW is a C subroutine library for computing the discrete Fourier transform (DFT) in one or more dimensions, of arbitrary input size, and of both real and complex data (as well as of even/odd data, i.e. the discrete cosine/sine transforms or DCT/DST). We believe that FFTW, which is free software, should become the FFT library of choice for most applications.

http://www.fftw.org/

# Compile Guide for Windows 7/Linux/macOS

Please refer to

[1] https://www.photonics.umd.edu/software/ssprop/

[2] http://lesc.dinfo.unifi.it/wiki/doku.php?id=swbase:ssprop:install/

for guidance.

# Compile Guide Additional Note for Windows 10 64-bit & Newer Versions of MATLAB
1. My recommended compiler for Windows 10 and newer versions of MATLAB is **NOT** MinGW and GNUMEX, but Windows 10 SDK or Microsoft Visual Studio 2015 C++ Compiler.

2. Windows 10 SDK: https://developer.microsoft.com/en-us/windows/downloads/windows-10-sdk

3. To convert fftw3 .def files to .lib files, use the command in lib.exe provided in Microsoft Visual Studio 2015 (C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin)

    lib /MACHINE:X64 /def:libfftw3-3.def
  
    lib /MACHINE:X64 /def:libfftw3f-3.def
  
    lib /MACHINE:X64 /def:libfftw3l-3.def
  
   use /MACHINE:X86 on 32-bit Windows AND 32-bit MATLAB.

4. Lagacy option for MinGW: https://sourceforge.net/projects/mingw/files/

5. Lagacy option for GNUMEX: https://sourceforge.net/projects/gnumex/
