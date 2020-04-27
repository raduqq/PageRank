function X = PR_Inv(A)
  # Initializing variables
  n = rows(A);
  I_n = eye(n);
  X = [];
  
  for i = 1:n
    e_i = I_n(:, i);
    
    # A = QR => Q * R * (A ^ -1) = I_n
    [Q R] = myGramSchmidt(A);    
    # R * (A ^ -1) = Q' * I_n => solve the upper triangular system
    x_i = SST(R, Q' * e_i);
    
    X = [X x_i];
  endfor 
endfunction