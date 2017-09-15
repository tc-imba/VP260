function drawfield(Ex,Ey,name)
    global format;
    m=length(Ex);n=length(Ey);
    xi=m/20;yi=n/20;
    [x,y]=meshgrid(xi:xi:m-xi,yi:yi:n-yi);
    px=Ex(xi:xi:m-xi,yi:yi:n-yi);
    py=Ey(xi:xi:m-xi,yi:yi:n-yi);
    len=max(max(sqrt(px.^2+py.^2)));
    scale=max(m,n)/len;
    quiver(x,y,px.*scale,py.*scale);
    axis([0 m+2 0 n+2]);
    axis ij;
    set(gca,'XAxisLocation','top');   
    set(gca,'XTick',0:n/10:n);
    set(gca,'YTick',0:m/10:m);
    saveas(gca,['./' name '/field.' format]);
end