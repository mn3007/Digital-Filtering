
N = 1024;
n = (0:N-1)*1/1024;
h = filter(b,a,x); % Impulse response
H = freqz(b, a, N, 'whole'); % Frequency response
decibels = 20*log10(abs(H)./max(abs(H)));
phase = unwrap(angle(H)); 
g = grpdelay(b, a, N, 'whole');

subplot(3,1,1), plot(n, 20*log10(abs(H)./max(abs(H))))
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Magnitude Response')

subplot(3,1,2), plot(n, phase, 'r')
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Frequency Response')

subplot(3,1,3), plot(n,g,'k')
xlim([0 0.5])
xlabel('Normalized Frequency')
ylabel('Group delay (samples)')

saveas(gcf, 'Task3_2', 'png') % Save Figure
shg

