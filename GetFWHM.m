function Tfwhm = GetFWHM(u,t,tc)
  
% This function calculates T-fwhm (full width at half maximum intensity) from curve u.
% This is a part of SSPROP-NFOL: https://github.com/TerenceWSK/SSPROP-NFOL
% the specified parameters:
%
% 
% USAGE:
% 
% T0 = GetFWHM(u,t);
% T0 = GetFWHM(u,t,tc);
% 
% INPUT:
% 
% type  string parameter that determine pulse type, 'gaussian' or 'sech'('sechpulse')
% u     1-dimensional vector,curve 
% t     1-dimensional vector,time 
% tc    center of pulse (default = 0).
% 
% OUTPUT:
% 
% Tfwhm:full width at half maximum intensity
%
  
if (nargin < 3)
  tc = 0;
end

if tc ~= 0
    t = t - tc;
end

step = 1e-6;
ti = min(t):step:max(t);
I = abs(u).^2;
Ii = interp1(t,I,ti,'spline');
Imax = max(Ii);
T0I = Imax / 2;
for k = 1:1:length(Ii)
    if ti(k) >= 0 && k+1 <= length(Ii)
        if Ii(k) > T0I && Ii(k+1) < T0I
            Tfwhm = 2 * ti(k);
            break
        end
    end
end
