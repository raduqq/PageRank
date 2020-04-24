function PR = PR_Iter(N, M, d, eps)
  PR_prev = PR_curr = zeros(N, 1); 
  PR_curr(:) = double(1)/ double(N);
  one_vector = ones(N, 1);
  
  do
    PR_prev = PR_curr;
    PR_curr = d * M * PR_prev + (double(1 - d) / double(N)) * one_vector;
    norm(PR_curr - PR_prev);
  until abs(norm(PR_curr - PR_prev)) < eps
  
  PR = PR_prev;
endfunction