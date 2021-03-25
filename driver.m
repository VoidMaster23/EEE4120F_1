tic;
whiten = createwhiten(10);
runtime = toc();
disp(strcat("It took: ", num2str(runtime*1000), " ms to run"));
size(whiten)
audiowrite('w2.wav', white, 8000, 'BitsPerSample', 16);
hist(whiten, 100, 1);

tic;
whiten2 = prac1(10);
runtime2 = toc();
disp(strcat("It took: ", num2str(runtime*1000), " ms to run"));

su = getSpeedUp(runtime, runtime2);

