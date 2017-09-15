gv=-2:1:2;
[X,Y,Z] = meshgrid(gv,gv,gv);
b=1;
z=b.*Z;
x=X./(X.^2+Y.^2).*(-0.5);
y=Y./(X.^2+Y.^2).*(-0.5);
quiver3(X,Y,Z,x,y,z);
saveas(gcf,'7.eps')