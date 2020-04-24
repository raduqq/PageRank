function [A N] = readMatrix(fid)
  # Reading number of elements  
  buffer = fgetl(fid);
  N = buffer;
  N = str2num(N);
  
  # Reading matrix
  for i = 1:N
    buffer = fgetl(fid);
    A(i, :) = str2num(buffer);
  endfor  
endfunction