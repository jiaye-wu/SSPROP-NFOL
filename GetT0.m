function T0 = GetT0(u,t,tc)
  
% This function calculates T0 (half width at 1/e intensity) from curve u.
% This is a part of SSPROP-NFOL: https://github.com/TerenceWSK/SSPROP-NFOL
% the specified parameters:
%
% 
% USAGE:
% 
% T0 = GetT0(u,t);
% T0 = GetT0(u,t,tc);
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
% T0:   half width at 1/e intensity
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
T0I = Imax / exp(1);
for k = 1:1:length(Ii)
    if ti(k) >= 0 && k+1 <= length(Ii)
        if Ii(k) > T0I && Ii(k+1) < T0I
            T0 = ti(k);
            break
        end
    end
end
