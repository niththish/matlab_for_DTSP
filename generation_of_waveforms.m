clc 
clear all 
close all 

disp('Program for Waveform generation'); 
opt=1;

while(opt==1) 
 disp('Which waveform you want to generate?'); 
 disp('1.Impulse,2.Step,3.Ramp,4.Exponential,5.Sine,6.Cosine,7.Triangle,8.Sawtooth');  
 k=input('ENTER YOUR CHOICE:'); 
 
 switch k 
     %IMPULSE WAVEFORM 
     case 1 
         n = [-20:1:20]; 
         for k=1:1:length(n) 
             if(n(k)==0) 
                 x(k)=1; 
             else 
                 x(k)=0; 
             end 
         end 
         
         disp(x); 
         stem(n,x); 
         xlabel('n -->'); 
         ylabel('amplitude'); 
         title('NITHTHISH - UNIT IMPULSE SIGNAL'); 
         
     %STEP WAVEFORM 
     case 2 
         n =[-20:1:20]; 
         for k=1:1:length(n) 
             if(n(k)>=0) 
                 x(k)=1; 
             else 
                 x(k)=0; 
             end 
         end 
         disp(x); 
         stem(n,x); 
         xlabel('n -->');
         ylabel('amplitude'); 
         title('NITHTHISH - UNIT STEP SIGNAL');  
     %RAMP WAVEFORM 
     case 3 
         n = [-20:1:20]; 
         for k=1:1:length(n) 
             if(n(k)>=0) 
                 x(k)=n(k); 
             else 
                 x(k)=0; 
             end 
         end 
         disp(x); 
         stem(n,x); 
         xlabel('n -->'); 
         ylabel('amplitude'); 
         title('NITHTHISH - RAMP SIGNAL'); 
    %EXPONENTIAL WAVEFORM 
    case 4 
        n = [-20:1:20]; 
        for k=1:1:length(n)
            if(n(k)>=0)  
                x(k)=exp(n(k)); 
            else 
                x(k)=0; 
            end 
        end 
        disp(x); 
        stem(n,x); 
        xlabel('n -->'); 
        ylabel('amplitude'); 
        title('NITHTHISH - EXPONENTIAL SIGNAL'); 
     %SINE WAVEFORM 
     case 5 
         n = [0:(pi/32):(4*pi)]; 
         x = sin(n); 
         disp(x); 
         stem(n,x); 
         xlabel('n -->'); 
         ylabel('amplitude'); 
         title('NITHTHISH - SINE SIGNAL');
      %COSINE WAVEFORM 
     case 6 
         n = [0:(pi/32):(4*pi)]; 
         x = cos(n); 
         disp(x); 
         stem(n,x); 
         xlabel('n -->'); 
         ylabel('amplitude'); 
         title('NITHTHISH - COSINE SIGNAL'); 
    %TRIANGULAR WAVEFORM 
    case 7 
        n = [0:0.2:20]; 
        x=sawtooth(n,0.5); 
        disp(x); 
        stem(n,x); 
        xlabel('n -->'); 
        ylabel('amplitude'); 
        title('NITHTHISH - TRIANGULAR SIGNAL'); 
     %SAWTOOTH WAVEFORM
     case 8
         n = [0:0.2:20]; 
         x=sawtooth(n,1); 
         disp(x); 
         stem(n,x); 
         xlabel('n -->'); 
         ylabel('amplitude'); 
         title('NITHTHISH - SAWTOOTH SIGNAL'); 
     otherwise 
         disp('INVALID CHOICE');
 end 
 
 disp('Do you want to continue?');  
 opt=input('If YES,press 1:');  
end 
 
