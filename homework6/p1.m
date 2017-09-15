y=0:0.01:10;
z=zeros(1,length(y));
plot(y,z);
xlabel('y');
ylabel('z');
axis([0 10 -1 1]);
saveas(gcf,'1_1.eps')