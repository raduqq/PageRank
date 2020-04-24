function y = Apartenenta(x, val1, val2)
  # Testing the three branches of the membership function
  if x < val1
    y = 0;
  elseif  x <= val2
    a = 1 / (val2 - val1);
    b = - val1 / (val2 - val1);
    y = a * x + b;
  elseif x <= 1
    y = 1;
  endif
endfunction