function f = srop(A, B, op, R)
% SROP   Stochastically rounded operations with input validation.
%    F = SROP(A,B,OP,R) returns the stochastically rounded result of OP applied
%    element-wise to the elements of A and B, which must be multidimensional
%    arrays of identical sizes and number of dimentsions.
%
%    The parameter OP must be a string with the following meaning:
%             '+' or 'add'  -  return SRADD(A,B,R)
%                   'add2'  -  return SRADD2(A,B,R)
%                      '-'  -  return SRADD(A,-B,R)
%      '*' or 'x' or 'mul'  -  return SRMULFMA(A,B,R)
%             '/' or 'div'  -  return SRDIV(A,B,R)
%
%    The entries of R must be floating point numbers in [0,1). If this argument
%    is omitted, R will be generated as RAND(SIZE(A)).

  %% Parse and validate input.
  if nargin < 3 || nargin > 4
    error('srtoolbox:srop:invalidArgumentNumber', ...
          'This function accepts only three to four arguments.');
  end
  if ~isfloat(A) || ~isfloat(B)
    error('srtoolbox:srop:invalidOperands', ...
          'The first two argumets must be arrays of numerical values.');
  end
  if ndims(A) ~= ndims(B) || any(size(A) ~= size(B))
    erro('srtoolbox:srop:invalidOperands', ...
         'All dimensions of the first two operands must be equal.');
  end
  if ~ischar(op) || ...
        (~strcmp(op, '+') && ~strcmp(op, 'add') && ~strcmp(op, 'add2') && ...
         ~strcmp(op, '-') && ...
         ~strcmp(op, '*') && ~strcmp(op, 'x') && ~strcmp(op, 'mul') && ...
         ~strcmp(op, '/') && ~strcmp(op, 'div'))
    error('srtoolbox:srop:invalidOperation', ...
          ['The operator must be one of the following:\n', ...
           '''+'', ''add'', ''add2'', ''-''', ...
           '''*'', ''x'', ''mul''', ...
           '''/'', ''div''']);
  end
  if nargin < 4
    R = rand(size(A));
  else
    if ~isnumeric(R) || any(R < 0 | R >= 1)
      error('srtoolbox:srop:invalidOperation', ...
            'The fourth argument must be a floating point in [0,1).');
    end
  end

  %% Call relevant subfunction.
  switch op
    case {'+', 'add'}
      f = sradd(A, B, R);
    case 'add2'
      f = sradd2(A, B, R);
    case '-'
      f = sradd(A, -B, R);
    case {'*', 'x', 'mul'}
      f = srmulfma(A, B, R);
    case {'/', 'div'}
      f = srdiv(A, B, R);
  end

end
