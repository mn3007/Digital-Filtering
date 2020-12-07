% 
N = 1024; % Number of frequency points
n = (0:N-1)*1/1024; % Frequency vector
h = [0.00506, 0, -0.04194, 0, 0.28848,0.49679, 0.28848, 0, -0.04194, 0, 0.00506]; % Impulse response
H = fft(h, 1024); % Frequency response
magnitude = abs(H); % Magnitude of frequency response
phase = unwrap(angle(H)); % Phase of frequency response
g = grpdelay(h, 1, 1024, 'whole');

subplot(3,1,1), plot(n, 20*log10(abs(H)./max(abs(H))))
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Magnitude Response (dB)')

subplot(3,1,2), plot(n,phase)
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Phase response (radians)')

subplot(3,1,3), plot(n,g)
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Group delay (samples)')

saveas(gcf, 'Task2_2', 'png') % Save Figure
shg

