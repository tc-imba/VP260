t=0:0.01:10;
y=-cos(t)+t+1;
z=sin(t);
plot(y,z);
xlabel('y');
ylabel('z');
axis([0 10 -1 1]);
saveas(gcf,'1_3.eps')