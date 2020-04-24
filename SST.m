function [x] = SST(A, b)
  [m n] = size(A);
  n = min(m , n);
  x = zeros(n, 1);
  
  # Calculating x_n separately
  x(n) = b(n) / A(n, n);
  
  for i = (n - 1) : -1 : 1
    sum = A(i, (i + 1):n) * x((i + 1):n, 1);
    x(i) = (b(i) - sum)/A(i,i);
  endfor
endfunction