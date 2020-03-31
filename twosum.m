function [sum, error] = twosum(a, b);
% TWOSUM   Compute floating-point sum and rounding error.
%    [SUM,ERROR] = TWOSUM(A,B) computes two floating point numbers SUM and ERROR
%    such that SUM + ERROR = A + B and SUM is the floating-point approximation
%    of A + B computed with the current rounding mode.
  sum = a + b;
  a_trunc = sum - b;
  b_trunc = sum - a_trunc;
  a_error = a - a_trunc;
  b_error = b - b_trunc;
  error = a_error + b_error;
end