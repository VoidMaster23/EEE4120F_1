
function wave = createwhite(n)
  
  white = rand(8000*10,1)*2-1;
  audiowrite('w.wav', white, 8000, 'BitsPerSample', 16);
  [y, fs] = audioread('w.wav');
  wave = y;
endfunction 