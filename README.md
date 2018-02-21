# SSPROP-NFOL
SSPROP-NFOL is the enhanced Windows AMD64/X64 (compiled) distribution of SSPROP, maintained and used by Terence J. Wu, Laboratory of Nonlinear Fiber Optics, School of Electronic and Computer Engineering, Peking University. 

SSPROP-NFOL is also a general-purpose symmetrized split-step software routine that can be invoked directly from Matlab to solve the nonlinear Schrödinger equation. It guarantees the same efficiency as SSPROP originally by Photonics Research Laboratory, Maryland University (https://www.photonics.umd.edu/software/ssprop/). 

SSPROP-NFOL is a **ready-to-use SSPROP distribution** compiled for **Windows 10 64-Bit PCs/Tablets** and **newer MATLAB 64-Bit versions above 7.5** (test environment MATLAB 64-Bit 9.1.0.441655 R2016b, Windows 10 Fall Creator Update 1709). It is ready to use right out-of-the-box. It provides propagation algorithm command using *MATLAB MEXW64* and supports *intrapulse Raman scattering* & *self-steepening effect*. Other improvements can be found in Changelog.txt.

SSPROP-NFOL is an open-source software under GPL v3.

# SSPROP-NFOL-DemoCode
DemoCode repository (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode) shows how to utilize SSPROP-NFOL project. The demo codes reproduce many of the numerical results that are presented in Chapter 3 to Chapter 5 in Govind. P. Agrawal's book, "Nonlinear Fiber Optics", 5th Edition.

SSPROP-NFOL-DemoCode are licensed under **Apache License 2.0** along with **"Additional Term of Use"** (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode/blob/master/README.md). **Please follow these reqirement is you use it in your scientific researches**.

# License
*SSPROP-NFOL* codes are licensed under **GPL v3**.

*SSPROP-NFOL-DemoCode* (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode) are licensed under **Apache License 2.0** and **additional terms** included in README.md. If example files are used or refered to in a scientific project, the Additional Term of Use below should be followed: https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode/blob/master/README.md

# Authors
The original version of SSPROP is by Maryland University (https://www.photonics.umd.edu/software/ssprop/), which is now in the SSPROP-Original branch.

The SSPROP-NFOL is maintained by Terence J. Wu, School of Electronic and Computer Engineering, Peking University (https://github.com/TerenceWSK/SSPROP-NFOL), which is in the master branch.

The SSPROP-NFOL-DemoCode is maintained by Terence J. Wu, School of Electronic and Computer Engineering, Peking University (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode).

# Citation & Reference
The author of SSPROP-NFOL kindly invite you to cite the following works if either SSPROP-NFOL or SSPROP-NFOL-Examples has helped you to accomplish scientific researches and publish papers:
1. J. Wu and X. Yang. Opt. Express 25(22): 27724-27735. DOI: 10.1364/OE.25.027724
2. J. Wu, Y. Gong, et. al., Chinese Phys. B 26(10): 104201. DOI: 10.1088/1674-1056/26/10/104201

# About the original SSPROP
One of the most fundamental equations in optical communications is the nonlinear Schrödinger equation, which governs the propagation of optical signals in dispersive, nonlinear fibers. Unfortunately, in all but a few special cases, the nonlinear Schrödinger equation does not have analytic solutions, and must be solved numerically.

SSPROP is a general-purpose symmetrized split-step software routine that can be invoked directly from Matlab to solve the nonlinear Schrödinger equation. Unlike conventional Matlab scripts that are interpreted at runtime, SSPROP is a compiled program written in C that can be called directly from Matlab. It therefore retains the speed and efficiency of compiled program, while allowing access to the full range of Matlab graphing and vector manipulation routines. Benchmark tests show that the program is up to 10-20x faster than an equivalent Matlab m-file script that performs the same calculations.

Original project is licensed under GPL v2. (https://www.photonics.umd.edu/software/ssprop/)

# Installation and Implementation
Download the repository and place it in a fixed path on local drive, name it as you like. However, in order to avoid potential glitches, please do not use Chinese characters (neither Simplified nor Traditional) or any space within the path. (recommendation: use this_is_an_example instead of "this is an example").

Then include this folder but **NOT** its sub-folders, into the MATLAB path settings. If you included the sub-folders, conflicts might occur. If you would like to use dll legacy support for Windows or mexglx support for Linux, just copy those files into the root folder.

# SSPROP-NFOL Vector sspropvc.mexw64
The vector version of the SSPROP-NFOL (sspropvc.mexw64) solves the coupled nonlinear Schrödinger equations for propagation in a birefringent fiber. The code can model birefringence, differential group delay (PMD), polarization-dependent dispersion, and polarization dependent loss, all in the context of nonlinear propagation.

The user may choose from two different algorithms, depending on whether the birefringent beat length is shorter or longer than the nonlinear length.

The compiled mex file (sspropvc.mexw64) can be invoked from Matlab using one of the following forms:

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma);`

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma,psp,method);`

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma,psp,method,maxiter);`

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma,psp,method,maxiter,tol);`

The last four arguments assume a default value if they are left unspecified. 

The parameter definations are the same with original SSPROP, ref: by Photonics Research Lab, Maryland University
https://www.photonics.umd.edu/software/ssprop/vector-version/

# SSPROP-NFOL Scalar sspropc.mexw64
The scalar version of the SSPROP solves the scalar nonlinear Schrödinger equation using the symmetrized split-step Fourier method. It allows for almost arbitrary specification of the dispersion and loss, and it includes a simple approximation for the *intrapulse Raman response time* and the *optical self-steepening effect*.

The compiled mex file (sspropc.mexw64) can be invoked from Matlab using one of the following forms:

`u1 = sspropc(u0,dt,dz,nz,alpha,betap,gamma);`

`u1 = sspropc(u0,dt,dz,nz,alpha,betap,gamma,tr);`

`u1 = sspropc(u0,dt,dz,nz,alpha,betap,gamma,tr,to);`

`u1 = sspropc(u0,dt,dz,nz,alpha,betap,gamma,tr,to,maxiter);`

`u1 = sspropc(u0,dt,dz,nz,alpha,betap,gamma,tr,to,maxiter,tol);`

The last three arguments assume a default value if they are left unspecified.

sspropc may also be invoked with a single input argument, to specify options specific to the FFTW routines:

`sspropc -option`

The parameter definations are the same with original SSPROP, ref: by Photonics Research Lab, Maryland University
https://www.photonics.umd.edu/software/ssprop/scalar-version/

# Pulse Generation
**Gaussian Pulse**

`u = gaussian (t);`

`u = gaussian (t,t0);`

`u = gaussian (t,t0,FWHM);`

`u = gaussian (t,t0,FWHM,P0);`

`u = gaussian (t,t0,FWHM,P0,m);`

`u = gaussian (t,t0,FWHM,P0,m,C);`

*t*     vector of times at which to compute u

*t0*    center of pulse (default = 0)

*FWHM*  full-width at half-intensity of pulse (default = 1)

*P0*    peak intensity (|u|^2 at t=t0) of pulse (default = 1)

*m*     Gaussian order (default = 1)

*C*     chirp parameter (default = 0)

**Sech Pulse**

`u = sechpulse (t);`

`u = sechpulse (t,t0);`

`u = sechpulse (t,t0,FWHM);`

`u = sechpulse (t,t0,FWHM,P0);`

`u = sechpulse (t,t0,FWHM,P0,C);`

*t*     vector of times at which to compute u

*t0*    center of pulse (default = 0)

*FWHM*  full-width at half-intensity of pulse (default = 1)

*P0*    peak intensity (|u|^2 at t=t0) of pulse (default = 1)

*C*     chirp parameter (default = 0)

**Soliton Pulse**

`u = solitonpulse (t);`

`u = solitonpulse (t,t0);`

`u = solitonpulse (t,t0,epsilon);`

`u = solitonpulse (t,t0,epsilon,N);`

*t*         vector of times at which to compute u

*t0*        center of pulse (default = 0)

*epsilon*   scale factor for solition (default = 1), note: make epsilon=2*acosh(sqrt(2)) to get FWHM = 1
           
*N*         soliton order (default = 1)

# My Other Open Source Scientific Research Tools

1) SSPROP-NFOL-DemoCode (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode):  Demonstrations of SSPROP-NFOL project.

2) Coming soon
