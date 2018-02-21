# SSPROP-NFOL
This repository is established to open-source the enhanced version of SSPROP originally by Photonics Research Laboratory, Maryland University (https://www.photonics.umd.edu/software/ssprop/). 

SSPROP-NFOL is a **ready-to-use SSPROP** compiled distribution for **Windows 10 64-Bit PCs/Tablets** and **newer MATLAB 64-Bit versions above 7.5** (test environment MATLAB 64-Bit 9.1.0.441655 R2016b, Windows 10 Fall Creator Update 1709). 

This project is used in Laboratory of Nonlinear Fiber Optics, School of Electronic and Computer Engineering, Peking University. The SSPROP-NFOL is maintained by Terence J. Wu.

# SSPROP-NFOL-DemoCode
DemoCode repository (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode) shows how to utilize SSPROP-NFOL project. The demo codes reproduce many of the numerical results that are presented in Chapter 3 to Chapter 5 in Govind. P. Agrawal's book, "Nonlinear Fiber Optics", 5th Edition.

They can be use as a template or reference in your scientific research. Additional terms of use are listed in https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode .

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

# About SSPROP
One of the most fundamental equations in optical communications is the nonlinear Schrödinger equation, which governs the propagation of optical signals in dispersive, nonlinear fibers. Unfortunately, in all but a few special cases, the nonlinear Schrödinger equation does not have analytic solutions, and must be solved numerically.

SSPROP is a general-purpose symmetrized split-step software routine that can be invoked directly from Matlab to solve the nonlinear Schrödinger equation. Unlike conventional Matlab scripts that are interpreted at runtime, SSPROP is a compiled program written in C that can be called directly from Matlab. It therefore retains the speed and efficiency of compiled program, while allowing access to the full range of Matlab graphing and vector manipulation routines. Benchmark tests show that the program is up to 10-20x faster than an equivalent Matlab m-file script that performs the same calculations.

# About SSPROP-NFOL
SSPROP-NFOL is the enhanced version of SSPROP by Terence J. Wu of School of Electronic and Computer Engineering, Peking University. 

SSPROP-NFOL is also a general-purpose symmetrized split-step software routine that can be invoked directly from Matlab to solve the nonlinear Schrödinger equation. It guarantees the same efficiency as SSPROP.

It is enhanced to be compatible with Windows 10 64-Bit and newer version of 64-Bit MATLAB (Version 7.5+). It is ready to use right out-of-the-box. It provides propagation algorithm command using MATLAB MEXW64 and supports intrapulse Raman scattering & self-steepening effect. Other improvements can be found in Changelog.txt.

SSPROP-NFOL is a distribution of SSPROP under GPL v3.

# About SSPROP-NFOL-DemoCode
SSPROP-NFOL-DemoCode (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode) is Matlab code for figures in Chapter 3 to Chapter 5 in Nonlinear Fiber Optics (G. Agrawal, 5th Edition). The released codes utilize SSPROP-NFOL.

SSPROP-NFOL-DemoCode are licensed under **Apache License 2.0** along with **"Additional Term of Use"** (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode/blob/master/README.md). Please follow these reqirement is you use it in your scientific researches.


# Guide to Vector Version 
(by Photonics Research Lab, Maryland University)
https://www.photonics.umd.edu/software/ssprop/vector-version/

# Guide to Scalar Version 
(by Photonics Research Lab, Maryland University)
https://www.photonics.umd.edu/software/ssprop/scalar-version/

# Note 
(Orginally by Photonics Research Lab, Maryland University)
The m-file version does not include the delayed Raman response time or self-steepening terms, and the m-file version does not allow for control of the FFTW options.

# SSPROP-NFOL Usage - Pulse Generation
to be added.

# SSPROP-NFOL Usage - Pulse Propagation
to be added.

# My Other Open Source Scientific Research Tools

1) SSPROP-NFOL-DemoCode (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode):  Demonstrations of SSPROP-NFOL project.

2) Coming soon
