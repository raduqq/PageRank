function PR = PR_Algebr(N, M, d)
  PR = zeros(N, 1); 
  PR(:) = 1 / N;
  one_vector = ones(N, 1);
  identity_matrix = eye(N);
  
  PR = PR_Inv(identity_matrix - d * M) * ((1 - d) / N) * one_vector;
endfunction