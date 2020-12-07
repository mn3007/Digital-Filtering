clc
clear all
close all
alpha = -0.9;
N=1024; % Number of frequency points
n = (0:N-1)*1/1024; % Frequency vector
b = [alpha 1]; % Numerator coefficients 
a = [1 alpha]; % Denominator coefficients
H = freqz(b,a,1024); % Frequency response of digital filter
magnitude = abs(H); % Magnitude of frequency response
phase = unwrap(angle(H)); % Phase of frequency response

subplot(3,1,1), plot(n,magnitude)
xlim([0 0.5]) % Set  x-axis limits
xlabel('Normalized Frequency')
ylabel('Magnitude')

subplot(3,1,2), plot(n,phase)
xlim([0 0.5]) % Set  x-axis limits
ylim([-3.5 0])
xlabel('Normalized Frequency')
ylabel('Phase response')

subplot(3,1,3), grpdelay(b, a, N, 'whole'); % Group delay of digital filter
xlim([0 0.5]) % Set  x-axis limits
saveas(gcf, 'Task3_4', 'png') % Save Figure

shg

