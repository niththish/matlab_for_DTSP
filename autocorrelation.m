%Program to perform autocorrelation 
clc 
close all 

disp('This is the program to perform autocorrelation'); fprintf('\n'); 

%Getting the input sequence from user 
x = input('Enter the input sequence :');

%Performing the autocorrelation and displaying the output 
y = xcorr(x); 
disp('The autocorrelation output is :'); 
disp(y); 

%Plotting the input and output 
figure(1); 
subplot(2,1,1); 

%We need to plot the values from n = 0 till length - 1. 
ax = 0:1:length(x)-1; 
stem(ax,x); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title('input sequence x(n)'); 
subplot(2,1,2); 

ay = 0:1:length(y)-1; 
stem(ay,y); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title('autocorrelation output y(n)'); 
