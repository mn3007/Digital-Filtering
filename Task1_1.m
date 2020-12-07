clear all;
M = 5;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
plot(n, abs(y))
axis([0, 0.5, 0, 1])
gtext('5')
xlabel('Normalized Frequency')
ylabel('Magnitude')

hold on

M = 21;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
plot(n, abs(y))
axis([0, 0.5, 0, 1])
gtext('21')
xlabel('Normalized Frequency')
ylabel('Magnitude')

hold on

M = 51;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
plot(n, abs(y))
axis([0, 0.5, 0, 1])
gtext('51')
xlabel('Normalized Frequency')
ylabel('Magnitude')

saveas(gcf, 'Task1_1', 'png') % Save Figure
shg