function res = makeSierpinskiCarpet(iter)
% MAKESIERPINSKICARPET Create a 3^iter x 3^iter Sierpinski carpet
% Inputs:
%   iter: number of iterations; must be >= 0
% Outputs:
%   res:  logical square matrix of size 3 ^ iter

  if ~isnumeric(iter) || (iter ~= floor(iter)) || ~isscalar(iter)
    error('Error. Input must be a scalar integer.');
  end
  
  if iter < 0
    error('Error. Input must be non-negative.');
  end
  
  if iter == 0
    res = true;
    return
  end
  res = true(3, 3);
  res(5) = false;
  for k = 2 : iter
    res = repmat(res, 3, 3);
    rows = 3 ^ k;
    mid = (rows + 1) / 2;
    offset = (rows / 3 - 1) / 2;
    left = top = mid - offset;
    right = bottom = mid + offset;
    res(left : right, top : bottom) = false;
  end
end