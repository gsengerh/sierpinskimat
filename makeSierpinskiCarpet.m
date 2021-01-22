function res = makeSierpinskiCarpet(iter)
rows = columns = 3 ^ iter;
res = true(rows, columns);
offset = 0;
for k = 1 : iter
  rows = columns = 3 ^ k;
  m = true(rows, columns);
  mid = (rows + 1) / 2;
  left = top = mid - offset;
  right = bottom = mid + offset;
  m(left : right, top : bottom) = false;
  m = repmat(m, 3 ^ (iter - k));
  offset = (rows - 1) / 2;
  res = res & m;
endfor