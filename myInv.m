function X = myInv(A)
  # Initializing variables
  n = rows(A);
  I_n = eye(n);
  X = [];
  
  for i = 1:n
    e_i = I_n(:, i);
    
    [Q R] = myGramSchmidt(A);    
    x_i = SST(R, Q' * e_i);
    
    X = [X x_i];
  endfor 
  
endfunction