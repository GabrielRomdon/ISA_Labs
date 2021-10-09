fs=10000; %% sampling frequency
f1=500;  %% first sinewave freq (in band)
f2=4500; %% second sinnewave freq (out band)

% N=2; %% filter or-der
% nb=8; %% number of bits

x=6;
y=6;
p=0;
N=2^p*(mod(x,2)+1)+6*p;
nb=mod(y,7)+8;

T=1/500; %% maximum period
tt=0:1/fs:10*T; %% time samples

x1=sin(2*pi*f1*tt); %% first sinewave
x2=sin(2*pi*f2*tt); %% second sinewave

x=(x1+x2)/2; %% input signal

[bi, ai, bq, aq]=myiir_design(N, nb) %% filter design

y=filter(bq, aq, x); %% apply filter

%% plots
close all

figure
plot(tt,x1,'--d');
hold on
plot(tt,x2,'r--s');
plot(tt,x, 'g--+');
plot(tt, y, 'c--o');

legend('x1', 'x2', 'x', 'y')

figure
filec = load('resultsc.txt');
plot(tt, filec, 'blue');
%filec = filec/(2^(nb-1));

hold on
filem = load('resultsm.txt');
%filem = filem/(2^(nb-1));
plot(tt, filem, 'red');

legend('c', 'm')

files = load('samples.txt');
%files = files/max(file);
plot(tt, files, 'g--o');

figure
thd(filec)

%% quantize input and output
xq=floor(x*2^(nb-1));
idx=find(xq==2^(nb-1));
xq(idx)=2^(nb-1)-1;

yq=floor(y*2^(nb-1));
idy=find(yq==2^(nb-1));
yq(idy)=2^(nb-1)-1;

%% save input and output
fp=fopen('samples.txt','w');
fprintf(fp,'%d\n', xq);
fclose(fp);

fp=fopen('resultsm.txt', 'w');
fprintf(fp, '%d\n', yq);
fclose(fp);


%% function
function [bi, ai, bq, aq]=myiir_design(N,nb)
%% function myiir_design(N,nb)
%% N is order of the filter
%% nb is the number of bits
%% bi,ai taps represented as integers
%% bq,aq quantized taps

close all;

f_cut_off = 2000; % 1kHz
f_sampling = 10000; % 10kHz

f_nyq = f_sampling/2; %% Nyquist frequenc
f0 = f_cut_off/f_nyq; %% Normalized cut-off frequency

[b,a]=butter(N, f0); %% get filter coefficients
[h1, w1]=freqz(b,a); %% %% get the transfer function of the designed filter

bi=floor(b*2^(nb-1)); %% convert b coefficients into nb-bit integers
bq=bi/2^(nb-1); %% convert back b coefficients as nb-bit real values
ai=floor(a*2^(nb-1)); %% convert a coefficients into nb-bit integers
aq=ai/2^(nb-1); %% convert back a coefficients as nb-bit real values
[h2, w2]=freqz(bq,aq); %% get the transfer function of the quantized filter


%% show the transfer functions
plot(w1/pi, 20*log10(abs(h1)));
hold on;
plot(w2/pi, 20*log10(abs(h2)),'r--');
grid on;
xlabel('Normalized frequency');
ylabel('dB');

end