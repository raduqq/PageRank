function PR = Algebraic(in_file, d)
  # Reading matrix
  fid = fopen(in_file, "r");
  [A, N] = readMatrix(fid);
  fclose(fid);
  
  # Building L vector
  L = getL(A, N);
  
  # Building M matrix
  M = getM(A, L, N);
  
  # Calculating PR - algebraically
  PR = PR_Algebr(N, M, d);
endfunction