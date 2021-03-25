function wave = createwhiten(n)
  f =8000;
  result = zeros(n*f,1);
  for i = 1:n*f
   result(i) = rand();
  end
  
  wave  = result;
  
endfunction
