%Program to perform circular convolution using inbuilt command 
clc 
close all

disp('This is the program to perform circular convolution using inbuilt'); 
disp('command'); 
fprintf('\n'); 

%Getting the input and impulse response from user 
x = input('Enter the first sequence :'); 
h = input('Enter the second sequence :'); 

%To perform circular convolution, x and h should be of same size. 
%Find the length of x and length of h. Find the maximum value. 
len_x = length(x); 
len_h = length(h); 
len_y = max(len_x,len_h); 

%Use cconv() command for circular convolution. Specify the output  
%length as the maximum value.Display the output 
y = cconv(x,h,len_y); 
disp('The circular convolution output is :'); 
disp(y); 

%Plotting the first sequence, second sequence and output 
figure(1); 
subplot(3,1,1); 

%We need to plot the values from n = 0 till length - 1. 
ax = 0:1:length(x)-1; 
stem(ax,x); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title('first input sequence x(n)'); 
subplot(3,1,2); 

ah = 0:1:length(h)-1; 
stem(ah,h); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title('second input sequence h(n)'); 
subplot(3,1,3); 

ay = 0:1:length(y)-1; 
stem(ay,y); 
xlabel('samples n->'); 
ylabel('amplitude'); 
title('circular convolution output y(n)');
