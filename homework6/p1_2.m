t=0:0.01:10;
y=-0.5.*sin(t)+t;
z=-0.5.*(cos(t)-1);
plot(y,z);
xlabel('y');
ylabel('z');
axis([0 10 -1 1]);
saveas(gcf,'1_2.eps')