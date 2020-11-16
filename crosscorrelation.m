clc 
close all

x=input('enter the input sequence x') 
y=input('enter the input sequence y') 

m=length(x) 
n=length(y) 

if (m-n)~=0 
    if m>n 
    end
    y=[y zeros(1,(m-n))] 
    n=m 
else[12 3 4 5] 
 x=[x zeros(1,(n-m))] 
 m=n
end 

c=xcorr(x,y) 
subplot(3,1,1) 
stem(x) 
xlabel('n') 
ylabel('x(n)') 
title(' input x') 
subplot(3,1,2) 

stem(y) 
xlabel('n') 
ylabel('y(n)') 
title('input y') 

disp('cross correlated sequence') 
disp(c) 
subplot(3,1,3) 
stem(c) 
xlabel('n') 
ylabel('c(n)') 
title('cross correlated sequence') 
