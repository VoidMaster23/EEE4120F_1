function r = mycorr(x, y)
  n = size(x);
  xav = mean(x);
  yav = mean(y);
  rTop = 0;
  rBottom1 = 0;
  rBottom2 = 0;
  
  for i = [1:n]
    rTop += (x(i) - xav) * (y(i) -yav);
    rBottom1 += (x(i) - xav) ^ 2;
    rBottom2 += (y(i) - yav) ^ 2;  
  end
  
  r = rTop / ( sqrt(rBottom1) * sqrt(rBottom2) );
endfunction
