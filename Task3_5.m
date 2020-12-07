b = [0.425 0.425];
a = [1 -0.15];
x = [1,zeros(1,15)]; % Input vector
N = 1024;
n = (0:N-1)*1/1024;
h = filter(b,a,x); % Impulse response
H = freqz(b, a, N); % Frequency response
phase = unwrap(angle(H)); 
g = grpdelay(b, a, N, 'whole');

subplot(3,1,1), plot(n, 20*log10(abs(H)./max(abs(H))))
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Magnitude Response (dB)')

subplot(3,1,2), plot(n, phase, 'r')
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Phase')

subplot(3,1,3), plot(n,g,'k')
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Group delay (Samples)')

saveas(gcf, 'Task3_5', 'png') % Save Figure
shg

