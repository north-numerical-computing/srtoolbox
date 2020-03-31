function f = srmulfma(a, b, R)
% SRMULFMA   Stochastically rounded multiplication.
%    F = SRMULFMA(A,B,R) computes F by rounding A*B stochastically. The
%    parameter R must be a real scalar between 0 and 1, but the input
%    arguments are not checked for performance reasons.
  round_mode = feature('setround', 0);
  [sigma, error] = twoprodfma(a, b);
  Es = floor(log2(abs(sigma)));
  P = sign(error).*R.*2.^(Es-52);
  f = (error+P)+sigma;
  feature('setround', round_mode);
end