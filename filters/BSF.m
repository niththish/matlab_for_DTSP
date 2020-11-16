%Program for Butterworth IIR Bandstop analog filter 
clc; 
close all; 

fprintf('Program for Butterworth IIR Bandstop analog filter\n\n'); 

%We get the passedge, stopedge and sampling frequencies in Hz 
fp1=input('Please enter the pass edge frequency1:'); 
fs1=input('Please enter the stop edge frequency1:'); 
fs2=input('Please enter the stop edge frequency2:'); 
fp2=input('Please enter the pass edge frequency2:'); 

%fs_min should be twice the maximum frequency. Here, fs_min = 2*fp2. 
fs_min = 2*fp2; 
fprintf('\nPlease enter the sampling frequency greater than %d\n',fs_min'); fs_sf=input('Please enter the sampling frequency:'); 

%We get the attenuation in dB. rp will be around 0 to 3 dB %rs will be around 30 to 50 dB 
rp = input('\nPlease enter the passband ripple in dB:'); 
rs = input('Please enter the stopband attenuation in dB:'); 

%We need to normalise wp,ws to pi. It is similar to finding the digital %frequency digital omega = analog omega* Ts = analog omega/fs_sf
wp1=2*pi*fp1/fs_sf; 
ws1=2*pi*fs1/fs_sf; 
ws2=2*pi*fs2/fs_sf; 
wp2=2*pi*fp2/fs_sf; 

%The normalised frequencies are wp and ws 
fprintf('\nwp1 is %d\n',wp1); 
fprintf('ws1 is %d\n',ws1); 
fprintf('ws2 is %d\n',ws2); 
fprintf('wp2 is %d\n',wp2); 

%Computing the order(N) and cutoff frequency(wc) using wp,ws,rp,rs using %the buttord command with 's' option for analog filter. 
%Finding the coefficients of filter[b a] using butter command with 'stop' %and 's' option 
wp = [wp1 wp2]; 
ws = [ws1 ws2]; 
[N wc]=buttord(wp,ws,rp,rs,'s'); 
[b a]=butter(N,wc,'stop','s');

%Computing the frequency response using freqs command 
%Computing h for specific values of w i.e. 0, pi/100, 2*pi/100... till pi 
%and storing the corresponding the w values  
w=0:(pi/100):pi; 
[h om] = freqs(b,a,w); 

%Finding the magnitude response. Note: log10 should be used. 
%Plotting magnitude versus omega. 
mag_h=20*log10(abs(h)); 
figure(1); 
subplot(2,1,1); 
plot(om/pi,mag_h); 
xlabel('frequency normalised to 1 -->'); 
ylabel('Gain in dB-->'); 
title(' Magnitude response of BSF'); 

%Finding the phase response. 
%Plotting phase versus omega. 
angle_h = angle(h); 
subplot(2,1,2); 
plot(om/pi,angle_h) 
xlabel('frequency normalised to 1 -->'); 
ylabel('Phase in radian-->'); 
title('Phase response of BSF'); 
