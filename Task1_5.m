clear all;
M = 5;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
g = grpdelay(ones(1,M)./M, 1, 1024, 'whole');
plot(n, g)
axis([0, 0.5, 0, 30])
gtext('5')
xlabel('Normalized Frequency')
ylabel('Group delay (samples)')

hold on

M = 21;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
g = grpdelay(ones(1,M)./M, 1, 1024, 'whole');
plot(n, g)
axis([0, 0.5, 0, 30])
gtext('21')
xlabel('Normalized Frequency')
ylabel('Group delay (samples)')

hold on

M = 51;
N = 1024;
n = (0:N-1)*1/1024;
h = ones(1,M)./M; %numerator coefficients
y = fft(h, N);
g = grpdelay(ones(1,M)./M, 1, 1024, 'whole');
plot(n, g)
axis([0, 0.5, 0, 30])
gtext('51')
xlabel('Normalized Frequency')
ylabel('Group delay (samples)')

saveas(gcf, 'Task1_5', 'png') % Save Figure
shg