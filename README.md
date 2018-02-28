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
The **original version of SSPROP** is by Photonics Research Laboratory, Maryland University (https://www.photonics.umd.edu/software/ssprop/).

The **SSPROP-NFOL** is maintained by Terence J. Wu, School of Electronic and Computer Engineering, Peking University (https://github.com/TerenceWSK/SSPROP-NFOL), which is in the master branch.

The **SSPROP-NFOL-DemoCode** is maintained by Terence J. Wu, School of Electronic and Computer Engineering, Peking University (https://github.com/TerenceWSK/SSPROP-NFOL-DemoCode).

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

If "invalid error" occurs while calling the mexw64 function, run the following lines and ignore the ouput warnings:

`loadlibrary('libfftw3-3.dll','fftw3.h')`

# SSPROP-NFOL Vector sspropvc.mexw64
The vector version of the SSPROP-NFOL (sspropvc.mexw64) solves the coupled nonlinear Schrödinger equations for propagation in a birefringent fiber. The code can model birefringence, differential group delay (PMD), polarization-dependent dispersion, and polarization dependent loss, all in the context of nonlinear propagation.

The user may choose from two different algorithms, depending on whether the birefringent beat length is shorter or longer than the nonlinear length.

The compiled mex file (sspropvc.mexw64) can be invoked from Matlab using one of the following forms:

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma);`

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma,psp,method);`

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma,psp,method,maxiter);`

`u1 = sspropvc(u0x,u0y,dt,dz,nz,alphaa,alphab,betapa,betapb,gamma,psp,method,maxiter,tol);`

The last four arguments assume a default value if they are left unspecified. 

*u0x, u0y*, vector (N), Input optical field, specified by two length-N vector time sequences. u0x represents the x-component of the complex, slowly-varying envelope of the optical field, and u0y represents the corresponding y-component. The fields should be normalized so that |u0x|^2 + |u0y|^2 is the optical power.

*dt*, scalar, The time increment between adjacent points in the vector u0.

*dz*, scalar, The step-size to use for propagation

*nz*, scalar (int), The number of steps to take. The total distance propagated is therefore L = nz*dz

*alphaa, alphab*, scalar or vector (N), The linear power attenuation coefficients for the two eigenstates of the fiber. Here we use the labels “a” and “b” to denote the two eigenstates, which need not coincide with the x-y axes. Polarization dependent loss is modeled by using different numbers for alphaa and alphab.The loss coefficient may optionally be specified as a vector of the same length as u0x, in which case it will be treated as vector that describes a wavelength-dependent loss coefficient α(ω) in the frequency domain. (The function wspace.m can be used to construct a vector with the corresponding frequencies.)

*betapa, betapb*, vector, Real-valued vectors that specify the dispersion for each eigenstate (a, b) of the fiber. The dispersion can be specified to any polynomial order by using a betap vector of the appropriate length.Birefringence is accomodated by making the first elements betapa(1) and betapb(1) unequal. Differential group delay, or polarization mode dispersion is likewise treated by making the second elements betapa(2) and betapb(2) different. (See note below for a more complete discussion.)The propagation constant can also be specified directly by replacing the polynomial argument betap with a vector of the same length as u0x. In this case, the argument betap is treated as a vector describing propagation constant β(ω) in the frequency domain. (The function wspace.m can be used to construct a vector with the corresponding frequencies.)

*gamma*, scalar, A real number that describes the nonlinear coefficient of the fiber, which is related to the mode effective area and the nonlinear refractive index n2.

*psp*, scalar or vector (2), Principal eigenstate of the fiber, specified as a 2-vector containing the angles ψ and χ (see discussion above), psp = [ψ ,χ].If psp is a scalar, it is interpreted to be ψ, and χ is then taken to be zero. This corresponds to a linearly-birefringent fiber whose axes are oriented at an angle χ with respect to the x-y axes.If psp is left completely unspecified, it assumes a default value of [0,0], which means that the fiber eigenstates are linearly polarized along the x- and y- directions.

*method*, string, String that specifies which method to use when performing the split-step calculations. The following methods are recognized “elliptical” or “circular”.When method = “elliptical”, sspropv will solve the equations by decomposing the input field into the (in general) elliptical eigenstates of the fiber.  This method is appropriate only in fibers where the birefringent beat length is much shorter than the nonlinear length.When method = “circular”, sspropv will instead solve the equations by decomposing the input field into a right- and left-circular basis. This method is more accurate, but requires that the step size be small compared to the beat length.

*maxiter*, scalar (int), The maximum number of iterations to make per step. If the solution does not converge to the desired tolerance within this number of iterations, a warning message will be generated. Usually this means that the chosen stepsize was too small. (default = 4)

*tol*, scalar, Convergence tolerance: controls to what level the solution must converge when performing the symmetrized split-step iterations in each step. (default = 10–5.)

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

*u0*, vector (N), Input optical field, specified as a length-N vector time sequence. u0 represents the complex, slowly-varying envelope of the optical field. u0 should be normalized so that |u0|^2 is the optical power.

*dt*, scalar, The time increment between adjacent points in the vector u0.

*dz*, scalar, The step-size to use for propagation

*nz*, scalar (int), The number of steps to take. The total distance propagated is therefore L = nz*dz

*alpha*, scalar or vector (N), The linear power attenuation coefficient. Specifically, if the medium is excited with CW light, the power should fall with distance according to P(z) = P(0)exp(-α*z). Note: this implies that the fields decay as exp(-α*z/2).The loss coefficient alpha may optionally be specified as a vector of the same length as u0, in which case it is treated as vector that describes a wavelength-dependent loss coefficient α(ω) in the frequency domain. (The function wspace.m can be used to construct a vector with the corresponding frequencies.)

*betap*, vector, A real-valued vector specifying the dispersion properties of the medium. The dispersion can be specified to any polynomial order by using a betap vector with the appropriate length. In most cases the nonlinear Schrödinger equation is solved with a slowly-varing envelope approximation in a reference frame that is moving at the group velocity. In this case, the first two elements of the betap vector (β0 and β1) should be set to zero. The first non-zero term, betap(3), would then represent β2, the group-velocity dispersion.The propagation constant can also be specified directly by replacing the polynomial argument betap with a vector of the same length as u0. In this case, the argument betap is treated as a vector describing propagation constant β(ω) in the frequency domain. (The function wspace.m can be used to construct a vector with the corresponding frequencies.)

*gamma*, scalar, A real number that describes the nonlinear coefficient of the fiber, which is related to the mode effective area and the nonlinear refractive index n2.

*tr*, scalar, The Raman response time. (default = 0)

*t0*, scalar, The optical cycle time (= 1/f).  (default = 0)

*maxiter*, scalar (int), The maximum number of iterations to make per step. If the solution does not converge to the desired tolerance within this number of iterations, a warning message will be generated. Usually this means that the chosen stepsize was too small. (default = 4)

*tol*, scalar, Convergence tolerance: controls to what level the solution must converge when performing the symmetrized split-step iterations in each step. (default = 10–5.)

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
