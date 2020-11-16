%Program to compute dft of a sequence 
clc 
close all 

disp('This is the program to compute DFT using formula'); 
fprintf('\n'); 

%Getting the input sequence 
x = input('Enter the sequence'); 
len_x = length(x); 

%Getting the N-pt value 
N = input('Enter the N-pt value:'); 

%If N pt value is greater than input sequence length, pad zeros  
%to input sequence before computing DFT.This is zero padding 
%after zero padding the length of input sequence is N. 
if N>len_x 
 x = [x zeros(1,(N-len_x))]; 
end 

%DFT computation 
%temp is made zero before computing each fft value. 
% n-1 and k-1 are used as the initial values of n and k are 1. 
for k = 1:1:N 
 temp = 0; 
for n = 1:1:N
    temp = temp + x(n)*exp(-j*(2*pi/N)*(n-1)*(k-1)); 
end 
x_dft(k) = temp; 
end 

%Displaying the output 
disp('The DFT of the input sequence is '); 
disp(x_dft); 

%Computing the magnitude and phase of the dft sequence 
mag_x_dft = abs(x_dft); 
phase_x_dft = angle(x_dft); 

%Displaying the input sequence 
% figure(1); 
%Length of the original sequence is len_x 
x_orig = x(1:len_x); 

%We need to plot the values from n = 0 till len_x - 1. 
subplot(3,1,1); 
ax = 0:1:len_x-1; 
stem(ax,x_orig); 
xlabel('samples n ->'); 
ylabel('amplitude'); 
title('Input sequence x(n)'); 

%Displaying the magnitude and phase of the dft sequence 
%We need to plot the values from k = 0 till N-1. 
subplot(3,1,2); 
am = 0:1:N-1; 
stem(am,mag_x_dft); 
xlabel('k ->'); 
ylabel('|X(k)|'); 
title('DFT - Magnitude response'); 

%We need to plot the values from k = 0 till N-1. 
subplot(3,1,3); 
ap = 0:1:N-1; 
stem(ap,phase_x_dft); 
xlabel('k->'); 
ylabel('Angle(X(k))'); 
title('DFT - Phase response'); 
