%    a(1)*y(n) = b(1)*x(n) + b(2)*x(n-1)     + ... + b(nb+1)*x(n-nb)
%                          - a(2)*y(n-1)     -  ... - a(na+1)*y(n-na)
%         y[n] = 0.206572x[n]+0.413144x[n−1] + 0.206572x[n−2] 
%                            +0.369527y[n−1] − 0.195816y[n−2]

% Impulse response of an IIR system
b = [0.206572 0.413144 0.206572]; % Numerator coefficients of the rational transfer function
a = [1 -0.369527 0.195816]; % Denominator coefficients of rational transfer function
x = [1,zeros(1,15)]; % Input vector
h = filter(b,a,x); % Impulse response
plot([0:15],h,'-k'); % plot first 16 samples
xlabel('Normalized frequency')
ylabel('Impulse Response')
saveas(gcf, 'Task3_1', 'png') % Save Figure
shg


