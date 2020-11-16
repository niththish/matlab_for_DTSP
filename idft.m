%Program to compute idft of a sequence 
clc 
close all 
disp('This is the program to compute IDFT using formula'); 
fprintf('\n'); 

%Getting the input DFT sequence 
xdft = input('Enter the DFT sequence'); 
N = length(xdft); 

%IDFT computation 
%temp is made zero before computing each idft value.

% n-1 and k-1 are used as the initial values of n and k are 1. 
for n = 1:1:N 
 temp = 0; 
for k = 1:1:N 
 temp = temp + xdft(k)*exp(j*(2*pi/N)*(n-1)*(k-1)); 
end 
x_idft(n) = temp/N; 
end 

%Displaying the output 
disp('The IDFT of the DFT sequence is: '); 
disp(x_idft); 

%We need to plot the idft 
figure(1); 
ax = 0:1:length(x_idft)-1; 
stem(ax,x_idft); 
xlabel('n ->'); 
ylabel('Amplitude'); 
title('IDFT - x(n)'); 
