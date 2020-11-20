clc;
close all;

m=1;
am=5;
fm=10;
tm=1/fm;
t=0:tm/999:6*tm;
ym=am*sin(2*pi*fm*t);

figure(1);
subplot(4,1,1);
plot(t,ym);
title("Niththish.A - Modulating Signal");
xlabel("Time (sec)");
ylabel("Amplitude (volts)");

ac=am/m;
fc=fm*10;
tc=1/fc;
yc=ac*sin(2*pi*fc*t);

subplot(4,1,2);
plot(t,yc);
grid on;
title("Niththish.A - Carrier Signal");
xlabel("Time (sec)");
ylabel("Amplitude (volts)");

y=ac+ ( 1+m*sin(2*pi*fm*t) ).*sin(2*pi*fc*t);
subplot(4,1,3);
plot(t,y);
grid on;
title("Niththish.A - Amplitude Modulated Signal");
xlabel("Time (sec)");
ylabel("Amplitude (volts)");

s=(1/pi)*(ac+ym);
subplot(4,1,4);
plot(4,s);
grid on;
title("Niththish.A -  Demodulated Signal");
xlabel("Time (sec)");
ylabel("Amplitude (volts)");
