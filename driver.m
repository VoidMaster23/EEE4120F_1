# 1.2.1 Measure execution time of rand(), wav created in createwhite
tic;
white = createwhite(10);
runtime = toc();
disp(strcat("white took: ", num2str(runtime*1000), " ms to run"));

#1.2.2 Create white_n i.e. for loop version and 1.2.4 Time Execution
tic;
whiten = createwhiten(10);
runtime2 = toc();
disp(strcat("whiten took: ", num2str(runtime2*1000), " ms to run"));
audiowrite('w2.wav', white, 8000, 'BitsPerSample', 16);

#1.2.3 Visual Confirmation of uniform distribution
hist(whiten, 100, 1);

#1.2.4 Display Speedup
su = speedup(runtime, runtime2);
disp(strcat("Speedup = ", num2str(su * 100), "%"));


#1.2.5 My correlation function
r = mycorr(white, whiten);
disp(strcat("Correlation r = ", num2str(r)));