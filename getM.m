function M = getM(A, L, N)
  M = zeros(N, N);
  
  for i = 1:N
    for j = 1:N
      if A(j, i)
        M(i, j) = 1 / L(j);
      endif
    endfor
  endfor    

endfunction