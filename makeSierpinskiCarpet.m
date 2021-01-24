function res = makeSierpinskiCarpet(iter)
  if iter == 0
    res = 1;
    return
  endif
  res = false(3 ^ iter);
  res(1 : 3, 1 : 3) = true;
  res(2, 2) = false;
    for k = 2 : iter
    rows = 3 ^ (k - 1);
    for l = [1, 1, 2, 2, 3, 3, 3; 2, 3, 1, 3, 1, 2, 3]
      % fill each square with square from previous iteration
      top = (l(1) - 1) * rows + 1;
      left = (l(2) - 1) * rows + 1;
      right = left + rows - 1;
      bottom = top + rows - 1;
      res(left : right, top : bottom) = res(1 : rows, 1 : rows);
    endfor
  end