gv=-2:0.5:2;
[X,Y] = meshgrid(gv,gv);
x=Y;
y=X;
quiver(X,Y,x,y);
saveas(gcf,'5.eps')