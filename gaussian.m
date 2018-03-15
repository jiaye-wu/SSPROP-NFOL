function u = gaussian(t,tc,T0,P0,m,C)
  
% This function computes a gaussian or supergaussian pulse with
% the specified parameters:
%
%   sqrt(P0) * exp{ -[(1+iC)/2] * [(t-t0)/T]^(2m) }
% 
% USAGE:
% 
% u = gaussian (t);
% u = gaussian (t,tc);
% u = gaussian (t,tc,T0);
% u = gaussian (t,tc,T0,P0);
% u = gaussian (t,tc,T0,P0,m);
% u = gaussian (t,tc,T0,P0,m,C);
% 
% INPUT:
% 
% t     vector of times at which to compute u
% tc    center of pulse (default = 0)
% T0    half width at 1/e intensity of pulse (default = 1)
% P0    peak intensity (|u|^2 at t=t0) of pulse (default = 1)
% m     Gaussian order (default = 1)
% C     chirp parameter (default = 0)
% 
% OUTPUT:
% 
% u     vector of the same size as t, representing pulse
%       amplitude
%
  
if (nargin < 6)
  C = 0;
end
if (nargin < 5)
  m = 1;
end
if (nargin < 4)
  P0 = 1;
end
if (nargin < 3)
  T0 = 1;
end
if (nargin < 2)
  tc = 0;
end

% u = sqrt(P0)*pow2(-((1+i*C)/2)*(2*(t-t0)/FWHM).^(2*m));
% u = sqrt(P0)*exp(-((1+i*C)/2)*(2*(t-t0)/T0).^(2*m));
u = sqrt(P0) .* exp(-((1 + 1j*C) / 2) .* ((t-tc) ./ T0).^(2*m));
