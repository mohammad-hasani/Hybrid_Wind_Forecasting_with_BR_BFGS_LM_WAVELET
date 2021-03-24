function [data] = signal_random()
 fs = 11512; % Sampling frequency (samples per second) 
 dt = 1/fs; % seconds per sample 
 StopTime = 0.25; % seconds 
 t = (0:dt:StopTime)'; % seconds 
 F = 60; % Sine wave frequency (hertz) 
  data = cos(pi/10*t)+0.5*randn(size(t));
 %data = sin(2*pi*F*t);
 %plot(t,data)
 %%For one cycle get time period
 T = 1/F ;
 % time step for one time period 
 tt = 0:dt:T+dt ;
 d = sin(2*pi*F*tt) ;
 %plot(tt,d) ;
end

