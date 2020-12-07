clear all;
M = 5;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
phase = angle(y);
plot(n, phase/pi)
axis([0, 0.5, -1, 1])
xlabel('Normalized Frequency')
ylabel('Phase Response')

hold on

M = 21;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
phase = angle(y);
plot(n, phase/pi)
axis([0, 0.5, -1, 1])
xlabel('Normalized Frequency')
ylabel('Phase Response')

hold on

M = 51;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
phase = angle(y);
plot(n, phase/pi)
axis([0, 0.5, -1, 1])
xlabel('Normalized Frequency')
ylabel('Phase response')

saveas(gcf, 'Task1_3', 'png') % Save Figure
shg