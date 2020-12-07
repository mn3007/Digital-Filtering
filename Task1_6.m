t = 0:0.01:1;
f = 1;
x = sin(2*pi*1*t);
y = sin(2*pi*2*t);
z = sin(2*pi*4*t);
plot(t,x);
hold on;
plot(t,y);
plot(t,z);
saveas(gcf, 'Task1_6', 'png') % Save Figure
