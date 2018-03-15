function T0 = FWHM2T0(type,Tfwhm,C,m)
  
% This function converts T-fwhm (full width half maximum) to T0 (1/e intensity width)
% This is a part of SSPROP-NFOL: https://github.com/TerenceWSK/SSPROP-NFOL
% the specified parameters:
%
%   Gaussian (support super- and chirped): T0 = T(fwhm) / (2 * (log(2) / (1 + 1j*C)) ^(1 / (2*m)))
%   Sech Pulse (all types): T0 = T(fwhm) / (2 * log(1 + sqrt(2)))
% 
% USAGE:
% 
% T0 = FWHM2T0(type,Tfwhm);
% T0 = FWHM2T0(type,Tfwhm,C);
% T0 = FWHM2T0(type,Tfwhm,C,m);   m is only for gaussian pulse
% 
% INPUT:
% 
% type  string parameter that determine pulse type, 'gaussian' or 'sech'('sechpulse')
% Tfwhm full width half maximum
% C     chirp parameter (default = 0)
% m     Gaussian order (default = 1), does not affect sechpulse.
% 
% OUTPUT:
% 
% T0:   1/e intensity width value of the pulse
%
  
if (nargin<4)
  m = 1;
end
if (nargin<3)
  C = 0;
end

if type == 'gaussian'
    T0 = Tfwhm / (2 * (log(2) / (1 + 1j*C)) ^(1 / (2*m)));
end
if type == 'sech' || type == 'sechpulse'
    T0 = Tfwhm / (2 * log(1 + sqrt(2)));
end
if type ~= 'sech' && type ~= 'sechpulse' && type ~= 'gaussian'
    disp('Pulse type not supported.')
end
