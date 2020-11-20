clc  
clear all  
close all  
 
wp = 0.35*pi;  
ws = 0.7*pi; 

T=1;

omegap = (2/T)*tan(wp/2);  
omegas = (2/T)*tan(ws/2);  

delp = 0.6;  
dels = 0.1;  

alphap = -20*log10(delp);  
alphas = -20*log10(dels);  

[N omegac] = cheb1ord(omegap,omegas,alphap,alphas,'s');  
[b	a] = cheby1(N,alphap,omegac,'s');  
tf(b,a) 

[c	d] = bilinear(b,a,(1/T)); 
[h w] = freqz(c,d,50);  
tf(c,d,-1)

mag = abs(h);  
phase = angle(h); 

subplot(2,1,1)  
plot(w,mag);  
xlabel('angular frequency i.e. w -->');  
ylabel('Gain -->');  
title(' Magnitude response of LPF');  

subplot(2,1,2);
plot(w,phase);  
xlabel('angular frequency i.e. w -->'); 
ylabel('Phase in radian-->');  
title('Phase response of LPF');  

[z p] = tf2zp(c,d)  
figure(2);  
zplane(c,d); 
 
