
totalSpeedup = 0;
difference = 0;

for i = [1:10]
  # Measure execution time of rand(), wav created in createwhite
  tic;
  white = createwhite(10);
  runtime = toc();

  # Measure Execution time of wave created with whiten
  tic;
  whiten = createwhiten(10);
  runtime2 = toc();
  
  difference += (runtime - runtime2)
  
  su = speedup(runtime, runtime2)
  totalSpeedup += su;


end

speedAve = (totalSpeedup/10) *100; # To convert to percentage

disp(strcat("Average Speedup over 10 Samples = ", num2str(speedAve), "%"));
