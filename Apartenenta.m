function y = Apartenenta(x, val1, val2)
  # Testing the three branches of the membership function
  if x < val1
    # x belongs to the first branch
    y = 0;
  elseif  x <= val2
    # second
    a = 1 / (val2 - val1);
    b = - val1 / (val2 - val1);
    y = a * x + b;
  elseif x <= 1
    # third
    y = 1;
  endif
endfunction