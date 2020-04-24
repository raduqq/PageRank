function [A N] = readMatrix(fid)
  # Reading number of elements  
  buffer = fgetl(fid);
  N = buffer;
  N = str2num(N);
  
  # Reading matrix
  
  neighbors_list_start_pos = 3;
  for i = 1:N
    buffer = str2num(fgetl(fid));
    buffer = buffer(neighbors_list_start_pos:end);
    
    no_neighbors = length(buffer);
    for j = 1:no_neighbors
      A(i, buffer(j)) = 1;
    endfor  
    
    A(i, i) = 0;
  endfor  
endfunction