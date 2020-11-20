clc; 
close all;  

fprintf('Program for CHEBYSHEV IIR Lowpass analog filter\n\n');  

fp=input('Please enter the pass edge frequency:'); 
fs=input('Please enter the stop edge frequency:');  

OMEGAP = 2*pi*fp;  
OMEGAS = 2*pi*fs;  

fprintf('\nOMEGAP is %d\n',OMEGAP); 
fprintf('OMEGAS is %d',OMEGAS);  

rp = input('\nPlease enter the passband ripple in dB:'); 
rs = input('Please enter the stopband attenuation in dB:'); 

[N wc]=cheb1ord(OMEGAP,OMEGAS,rp,rs,'s');  
[b a]=cheby1(N,rp,wc,'s');  

omega = 0:1:2*OMEGAS;
[h omega] = freqs(b,a,omega);  


mag_h=abs(h);  

subplot(2,1,1);
plot(omega,mag_h);  
xlabel('angular frequency i.e. omega -->'); 
ylabel('Gain -->');  
title('Magnitude response of LPF');  

angle_h=angle(h);
subplot(2,1,2);
plot(omega,angle_h)  
xlabel('angular frequency i.e. omega -->');  
ylabel('Phase in radian-->');  
title('Phase response of LPF');  
