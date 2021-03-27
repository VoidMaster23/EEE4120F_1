n = [10000, 100, 1000];
f = [8, 800];
shift = [pi, 1];

for i = n
  for w = f
    for c = shift
      [x,y] = shifted(i, w, c);
      
      disp(strcat("For n = ", num2str(i), ", w = ", num2str(w), ", c = ",num2str(c)));
      r = corr(x,y)
      t = linspace(-5,5, i);
      plot(t, x, '-', t, y, 'r-');
      tl = title('Plotting shifted sinusoids');
      xl = xlabel('i');
      yl = ylabel('x, y');
      l = legend('x - sin(f*i)', 'y -sin(f * (i+c)_)');
      set (l, "fontsize", 16);
      set (tl, "fontsize", 16);
      set (yl, "fontsize", 16);
      set (xl, "fontsize", 16);
    end
  end
end
