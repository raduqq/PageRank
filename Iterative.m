function PR = Iterative(in_file, d, eps)
  # Reading matrix
  fid = fopen(in_file, "r");
  [A, N] = readMatrix(fid);
  fclose(fid);
  
  # Building L vector
  L = getL(A, N);
  
  # Building M matrix
  M = getM(A, L, N);
  
  # Calculating PR - iteratively
  PR = PR_Iter(N, M, d, eps);
endfunction