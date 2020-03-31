function [sigma, error] = twoprodfma(a, b);
% TWOPRODFMA   Compute floating-point product and rounding error.
%    [SIGMA,ERROR] = TWOPRODFMA(A,B) computes two floating point numbers SIGMA
%    and ERROR such that SIGMA + ERROR = A * B and SIGMA is the floating-point
%    approximation of A * B computed with the current rounding mode.
  sigma = a.*b;
  error = fma(a, b, -sigma);
end