[![View Stochastic Rounding Toolbox on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://mathworks.com/matlabcentral/fileexchange/74819)

# The Stochastic Rounding Toolbox

The Stochastic Rounding Toolbox is a collection of MATLAB functions for emulating stochastic rounding on IEEE-compliant hardware. The functions in the toolbox simulate stochastic rounding of the four elementary arithmetic operations. The following routines are provided:

1. Elementary arithmetic operations
   * sradd:     addition [Alg. 4.1, 1]
   * sradd2:   fast addition[Alg. 4.2, 1]
   * srmulfma: multiplication using FMA [Alg. 4.3, 1]
   * srdiv:    division [Alg. 4.5, 1]

2. Robust interface
   * srop: argument checking for all of the above.

3. Utility functions
   * twosum: augmented summation [Alg. 4.4, 2]
   * twoprodfma: augmented product [Alg. 4.8, 2]

The functions in 1. do not check the input arguments, thus are more efficient but less robust. The interface in 2. checks that all input arguments are valid, and is thus slower. All functions are vectorized.

### References

 [1] M. Fasi and M. Mikaitis. [*Algorithms for stochastically rounded elementary arithmetic operations in IEEE 754 floating-point arithmetic*](http://eprints.maths.manchester.ac.uk/2758/), Technical Report 2020.9, Manchester Institute for Mathematical Sciences, The University of Manchester, UK, Mar 2020.

 [2] J.-M. Muller, N. Brunie, F. de Dinechin, C.-P. Jeannerod, M. Joldes, V. Lefèvre, V. Melquiond, N. Revol and S. Torres. [*Handbook of Floating-Point Arithmetic*](https://doi.org/10.1007/978-3-319-76526-6), 2nd edition, Birkhäuser, 2018.

### License

This software is distributed under the terms of the 2-clause BSD software license (see [LICENSE](./LICENSE)).
