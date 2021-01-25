function res = makeSierpinskiCarpet(iter)
  if iter == 0
    res = 1;
    return
  endif
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