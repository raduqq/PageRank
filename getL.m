function L = getL(A, N)
  L = zeros(N, 1);
  
  for i = 1:N
    L(i) = sum(A(i,:) == 1);
  endfor
  
endfunction