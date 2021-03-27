n = [100, 1000, 10000];
totalSpeedup = [0,0,0];
difference = [0,0,0];
count = 1;

for i = n
  for j = [1:10]
    x = rand(1,i);
    y = rand(1,i);
    
    tic
    r1 = corr(x,y);
    runtime = toc();

    tic
    r2 = mycorr(x,y);
    runtime2 = toc();
  
    difference(count) += (runtime - runtime2);
  
    su = speedup(runtime, runtime2);
    totalSpeedup(count) += su;
  
    
  end
  
  count+=1;
end

for i = [1:3]
  difference(i) = difference(i)/10;
  totalSpeedup(i) = totalSpeedup(i)/10;
  
endfor

difference
totalSpeedup




