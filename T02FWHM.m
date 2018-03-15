function Tfwhm = T02FWHM(type,T0,C,m)
  
% This function converts T0 (1/e intensity width) to T-fwhm (full width half maximum)
% This is a part of SSPROP-NFOL: https://github.com/TerenceWSK/SSPROP-NFOL
% the specified parameters:
%
%   Gaussian (support super- and chirped): T(fwhm) = 2 * T0 * (log(2) / (1 + 1j*C)) ^(1 / (2*m))
%   Sech Pulse (all types): T(fwhm) = 2 * log(1 + sqrt(2)) * T0
% 
% USAGE:
% 
% Tfwhm = T02FWHM(type,T0);
% Tfwhm = T02FWHM(type,T0,C);
% Tfwhm = T02FWHM(type,T0,C,m);   m is only for gaussian pulse
% 
% INPUT:
% 
% type  string parameter that determine pulse type, 'gaussian' or 'sech'('sechpulse')
% T0    1/e intensity width
% C     chirp parameter (default = 0)
% m     Gaussian order (default = 1), does not affect sechpulse.
% 
% OUTPUT:
% 
% Tfwhm: Full width half maximum value of the pulse
%
  
if (nargin<4)
  m = 1;
end
if (nargin<3)
  C = 0;
end

if type == 'gaussian'
    Tfwhm = 2 * T0 * (log(2) / (1 + 1j*C)) ^(1 / (2*m));
end
if type == 'sech' || type == 'sechpulse'
    Tfwhm = 2 * log(1 + sqrt(2)) * T0;
end
if type ~= 'sech' && type ~= 'sechpulse' && type ~= 'gaussian'
    disp('Pulse type not supported.')
end
