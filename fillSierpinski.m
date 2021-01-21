  function mat = fillSierpinski(matrix, x, y, w, h)
    mat = matrix;
    if (w >= 3) && (h >= 3)
      w_n = w / 3;
      h_n = h / 3;
      
      mat(x + w_n : x + 2 * w_n - 1, y + h_n : y + 2 * h_n - 1) = false;
      
      if (w_n >= 3)
        for k = 1 : 3
          x_n = x + (k - 1) * w_n;
          for l = 1 : 3
            if k == 2 && l == 2
              continue
            endif
            y_n = y + (l - 1) * h_n;
            mat = fillSierpinski(mat, x_n, y_n, w_n, h_n);
          endfor
        endfor   
      endif
    endif
    endfunction