function f = sradd2(a, b, R)
% SRADD2   Stochastically rounded addition.
%    F = SRADD2(A,B,R) computes F by rounding A+B stochastically. The
%    parameter R must be a real scalar between 0 and 1, but the input arguments
%    are not checked for performance reasons.
  round_mode = feature('setround');
  feature('setround', 0);
  [sum, error] = twosum(a, b);
  Es = floor(log2(abs(sum)));
  P = sign(error).*R.*2.^(Es-52);
  f = (error+P)+sum;
  feature('setround', round_mode);
end