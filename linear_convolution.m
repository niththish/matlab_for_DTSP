%Program to perform linear convolution using inbuilt command 
clc; 
close all;

disp('This is the program to perform linear convolution using inbuilt'); 
disp('command'); 
fprintf('\n');

%Getting the input and impulse response from user 
x = input('Enter the input sequence :'); 
h = input('Enter the impulse response of the system :'); 

%Performing the convolution and displaying the output 
y = conv(x,h);

disp('The linear convolution output is :'); 
disp(y); 

%Plotting the input, impulse response and output 
figure(1); 
subplot(3,1,1); 

%We need to plot the values from n = 0 till length - 1. 
ax = 0:1:length(x)-1; 
stem(ax,x); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title(' input sequence x(n)'); 
subplot(3,1,2); 

ah = 0:1:length(h)-1; 
stem(ah,h); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title('impulse response h(n)'); 
subplot(3,1,3); 

ay = 0:1:length(y)-1; 
stem(ay,y); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title('Linear convolution output y(n)'); 
