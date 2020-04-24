function [Q R] = myGramSchmidt(A)
  # Initializing variables
  [n m] = size(A);
  Q = zeros(n, m);
  R = zeros(n);
  
  # Calculating Q and R
  for i = 1:n
    R(i, i) = norm(A(:,i));
    Q(:, i) = A(:, i) / R(i, i);
    
    for j = i + 1: n
      R(i, j) = Q(:, i)' * A(:, j);
      A(:, j) -= Q(:, i) * R(i, j);
    endfor
  endfor
  
endfunction