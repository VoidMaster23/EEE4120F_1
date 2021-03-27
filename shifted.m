function [x, y] = shifted(nEnd, f, shift)
  y = [];
  x = [];
  f = f*2*pi;
  n1 = linspace(-5,5,nEnd);
  
  count = 1;
  
  for i = n1
    x(count) = sin(f*i);
    y(count) = sin(f*(i+shift));
    
    count += 1;
  end
  
endfunction
