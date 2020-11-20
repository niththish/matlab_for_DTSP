clc;
close all;  

fprintf('Program for CHEBYSHEV IIR Highpass analog filter\n\n');  
fs=input('Please enter the stop edge frequency:');  
fp=input('Please enter the pass edge frequency:');  

OMEGAS = 2*pi*fs;  
OMEGAP = 2*pi*fp;

fprintf('OMEGAS is %d',OMEGAS);  
fprintf('\nOMEGAP is %d\n',OMEGAP);  

delp = input('\nenter the passband magnitude:');
dels = input('\nenter the stopband magnintude:');  

rp=-20*log10(delp);
rs=-20*log10(dels);

[N wc]=cheb1ord(OMEGAP,OMEGAS,rp,rs,'s');  
[b a]=cheby1(N,rp,wc,'high','s');  

[h omega] = freqs(b,a,omega);  
mag_h=abs(h);

subplot(2,1,1);
plot(omega,mag_h);  
xlabel('angular frequency i.e. omega -->');
ylabel('Gain -->');  
title('NITHTHISH - Magnitude response of HPF'); 

angle_h = angle(h);
subplot(2,1,2);
plot(omega,angle_h)  
xlabel('angular frequency i.e. omega -->');  
ylabel('Phase in radian-->');  
title('Phase response of HPF');   
