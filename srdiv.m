function f = srdiv(a, b, R)
% SRDIV   Stochastically rounded division.
%    F = SRDIV(A,B,R) computes F by rounding A/B stochastically. The
%    parameter R must be a real scalar between 0 and 1, but the input arguments
%    are not checked for performance reasons.
  round_mode = feature('setround', 0);
  s = a./b;
  t = fma(-s, b, a);
  t = t./b;
  Es = floor(log2(abs(s)));
  P = sign(t).*R.*2.^(Es-52);
  f = (t+P)+s;
  feature('setround', round_mode);
end