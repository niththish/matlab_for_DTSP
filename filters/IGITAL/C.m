clc
clear all  
close all  

fp = 200; 
fs = 800;  
fsf = 3000;  

wp = 2*pi*fp/fsf;  
ws = 2*pi*fs/fsf;  

fprintf('wp is %f\n',wp);  
fprintf('ws is %f\n',ws);  
T=0.5;

omegap = (2/T)*tan(wp/2);  
omegas = (2/T)*tan(ws/2); 

alphap = 2;  
alphas = 40;  

[N omegac] = buttord(omegap,omegas,alphap,alphas,'s'); 
[b a] = butter(N,omegac,'s');  
tf(b,a)

[c d] = bilinear(b,a,(1/T));  
[h w] = freqz(c,d,50);  
tf(c,d,-1) 

mag = 20*log10(abs(h));  
phase = angle(h);  

subplot(2,1,1);
plot(w,mag);  
xlabel('angular frequency i.e. w -->');  
ylabel('Gain in dB -->');  
title(' Magnitude response of LPF');  

subplot(2,1,2);
plot(w,phase);  
xlabel('angular frequency i.e. w -->'); 
ylabel('Phase in radian-->');  
title('Phase response of LPF');  

[z p] = tf2zp(c,d) 
figure(2);  
zplane(c,d); 
