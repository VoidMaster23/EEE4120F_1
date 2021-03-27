[x, fs] = audioread('w2.wav');
y = x;

r1 = mycorr(x,y)
r2 = corr(x,y)
disp(strcat("difference = ", num2str(r2 - r1), "\n"));

y(1) = 2; y(5) = -4; # i.e. fudge some of the value
r1 = mycorr(x,y)
r2 = corr(x,y)
disp(strcat("difference = ", num2str(r2 - r1), "\n"));

#Generate random value
x = rand(1,10); y = rand(1,10);
r1 = mycorr(x,y)
r2 = corr(x,y)
disp(strcat("difference = ", num2str(r2 - r1), "\n"));



#1.2.7 Correlation of shifted signals
