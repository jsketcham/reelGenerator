% create test reels for dtsPlayer

% 1) create path dts/reels in home directory

% Works on macOS and Linux
homeDir = getenv('HOME');
% Combine and create the folder safely
targetPath = fullfile(homeDir, 'dts/1234'); % serial number is the folder name
mkdir(targetPath);

% 2) generate reel wav files

baseFreq = 440;
% base, 3rd, 5th, 7th, octave
iso = [baseFreq,baseFreq*1.335,baseFreq*1.587,baseFreq*1.781,baseFreq*2];  % file frequencies

numseconds = 4;                % file duration in seconds, enough to test reel changes
sampleRate = 48000;
numSamples = sampleRate*numseconds;
numChannels = 16;               % dtsPlayer plays 16 channels
amplitude = 0.1;                % -20dB tone

for j=1:size(iso)(2)

  freq=iso(1,j);
  pinktone = zeros(numSamples,numChannels); % initialize the result array

  fName = sprintf("%s/R%d.wav",targetPath,j);
  printf("fName: %s, freq: %3.2f\n",fName,freq);  % checking fName, freq

  for i=1:numSamples

    if(mod(i,48000) == 0) % a progress indicator on the console
    printf(".")
    endif

    s = amplitude*sin(2*pi*i*freq/sampleRate);

    for k = 1:numChannels
      pinktone(i,k)=pinktone(i,k)+s;
    endfor

  endfor

 audiowrite(fName,pinktone,sampleRate,"BitsPerSample",24);

endfor

