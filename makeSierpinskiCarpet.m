function res = makeSierpinskiCarpet(iter)
rows = columns = 3 ^ iter;
res = true(rows, columns);
offset = 0;
val = 2;
for k = 1 : iter
  rows = columns = 3 ^ k;
  m = true(rows, columns);
  m(val - offset : val + offset, val - offset : val + offset) = false;
  m = repmat(m, 3 ^ (iter - k));
  res = res & m;
  offset = offset + 3 ^ (k - 1); % 0, 1, 4, 13, 40 -> 1, 3, 9, 27
  val = val + rows;
endfor