% Stochastic Rounding Toolbox
% Version 1.0 25-Mar-2020
% Copyright (c) 2020, Massimiliano Fasi and Mantas Mikaitis
% All rights reserved.
%
% The functions in this toolbox simulate stochastic rounding of the four
% elementary arithmetic operations. The following groups of functions are
% provided:
%
% (1) Elementary arithmetic operations
%       sradd            - Addition [Alg. 4.1, 1]
%       sradd2           - Fast addition [Alg. 4.2, 1]
%       srmulfma         - Multiplication using FMA [Alg. 4.3, 1]
%       srdiv            - Division [Alg. 4.5, 1]
%
% (2) Robust interface
%       srop             - Argument checking for all of the above.
%
% (3) Utility functions
%       twosum           - Augmented summation [Alg. 4.4, 2]
%       twoprodfma       - Augmented product [Alg. 4.8, 2]
%
% The functions in (1) do not check the input arguments, thus are more efficient
% but less robust. The interface in (2) checks that all input arguments are
% valid, and is thus slower. All functions are vectorized.
%
% References.
%
% [1] M. Fasi and M. Mikaitis. "Algorithms for stochastically rounded elementary
%     arithmetic operations in IEEE 754 floating-point arithmetic", Technical
%     Report 2020.9, Manchester Institute for Mathematical Sciences, The
%     University of Manchester, UK, Mar 2020.
%
% [2] J.-M. Muller, N. Brunie, F. de Dinechin, C.-P. Jeannerod, M. Joldes, V.
%     Lefevre, V. Melquiond, N. Revol and S. Torres. "Handbook of Floating-Point
%     Arithmetic", Birkhaeuser, 2018.