function L = getL(A, N)
  L = zeros(N, 1);
  
  for i = 1:N
    # The number of elements from A(i, :) that are equal to 1
    L(i) = sum(A(i,:) == 1);
  endfor
  
endfunction