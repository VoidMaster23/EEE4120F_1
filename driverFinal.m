n = [10000, 100, 1000];
f = [8, 800];
shift = [pi];

for i = n
  for w = f
    for c = shift
      [x,y] = shifted(i, w, c);
      
      
      disp(strcat("For n = ", num2str(i), ", w = ", num2str(w), ", c = ",num2str(c)));
      r = corr(x,y)
      t = linspace(-5,5, i);
      plot(t, x, '-', t, y, 'r-');
      title('Plotting shifted sinusoids');
      xlabel('i')
      ylabel('x, y')
      legend('x - sin(f*i)', 'y -sin(f * (i+c)_)')
      
      
    end
  end
end
