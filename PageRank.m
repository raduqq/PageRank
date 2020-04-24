function [R1 R2] = PageRank(filename, d, eps) 
  # Reading input
  in_fid = fopen(filename, "r");
  
  [A, N] = readMatrix(in_fid);
  buffer = fgetl(in_fid); 
  val1 = str2double(buffer);
  buffer = fgetl(in_fid);
  val2 = str2double(buffer);
  
  fclose(in_fid);
  
  # Building L vector
  L = getL(A, N);
  
  # Building M matrix
  M = getM(A, L, N); 
  
  # Writing to filename.out
  filename = [filename ".out"];
  out_fid = fopen(filename, "w");
  
  # Printing N
  fprintf(out_fid, "%d\n\n", N);
  
  # Printing PR_Iter
  R1 = PR_Iter(N, M, d, eps);
  for i = 1:N
    fprintf(out_fid, "%f\n", R1(i));
  endfor  
  
  fprintf(out_fid, "\n");
  
  # Printing PR_Algebr
  R2 = PR_Algebr(N, M, d);
  for i = 1:N
    fprintf(out_fid, "%f\n", R2(i));
  endfor
  
  fprintf(out_fid, "\n");

  # Sorting PageRank  
  PR_1 = [[1:N]' R2];
  PR_1 = sortrows(PR_1, -2);
  
  for i = 1:N
    fprintf(out_fid, "%d %f %d\n", int32(PR_1(i, 1)), PR_1(i, 2), Apartenenta(PR_1(i, 2), val1, val2));  
  endfor  
  
  fclose(out_fid);
endfunction