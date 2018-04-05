function Tfwhm = solitonpulseFWHM(epsilon)
  
% This function computes the T-fwhm (full width at half maximum intensity) of a soliton (sech) pulse with
% the following parameters:
%
% epsilon   scale factor for solition (default = 1)
% 
% OUTPUT:
% 
% T-fwhm    full width at half maximum intensity
  
if (nargin < 1)
  epsilon = 1;
end

Tfwhm = 2 * asech(2^(-1/2)) / epsilon;

