clc;
close all;

x=0:.5:4*pi;
signal1=8*sin(x);

l=length(signal1);
signal2=8*triang(l);

subplot(2,2,1);
plot(signal1);
title("Sinusoidal Signal");
ylabel("Amplitude--->");
xlabel("Time--->")

subplot(2,2,2);
plot(signal2);
title("Triangular Signal");
ylabel("Amplitude--->");
xlabel("Time--->")

subplot(2,2,3);
stem(signal1);
title("Sampled Sinusiodal Signal");
ylabel("Amplitude--->");
xlabel("Time--->")

subplot(2,2,4);
stem(signal2);
title("Sampled Triangular Signal");
ylabel("Amplitude--->");
xlabel("Time--->")

l1=length(signal1);
l2=length(signal2);

for i=1:11
    sig(1,i)=signal1(i);
    sig(2,i)=signal2(i);
end

tdmsig=reshape(sig,1,2*11);

figure

stem(tdmsig);
title("TDM Signal");
ylabel("Amplitude--->");
xlabel("Time--->");

demux=reshape(tdmsig,2,11);

for i=1:11
    sig3(i)=demux(1,i);
    sig4(i)=demux(2,i);
end

figure

subplot(2,1,1);
plot(sig3);
title("Recovered Sinusiodal Signal");
ylabel("Amplitude--->");
xlabel("Time--->");

subplot(2,1,2);
plot(sig4);
title("Recovered Triangular Signal");
ylabel("Amplitude--->");
xlabel("Time--->")


