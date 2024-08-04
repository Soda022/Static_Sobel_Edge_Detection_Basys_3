frequency = 1;       
amplitude = 1;      
duration = 5;         
sampling_rate = 1000;  
t = 0:1/sampling_rate:duration; 
sawtooth_signal = amplitude * (2 * (frequency * t - floor(frequency * t + 0.5)));
figure;
plot(t, sawtooth_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sawtooth Signal');
