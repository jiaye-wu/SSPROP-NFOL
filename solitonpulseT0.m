function T0 = solitonpulseT0(epsilon)
  
% This function computes the T0 (half width at 1/e intensity) of a soliton (sech) pulse with
% the following parameters:
%
% epsilon   scale factor for solition (default = 1)
% 
% OUTPUT:
% 
% T0        half width at 1/e intensity
  
if (nargin < 1)
  epsilon = 1;
end

T0 = asech(exp(-1/2)) / epsilon;

