function animate(V,loop,name)
    m=size(V,1);n=size(V,2);
    global gif_refresh gif_time;
    picnum_max=floor(gif_refresh*gif_time);
    picnum=1;
    step=max(1,floor(loop/picnum_max));
    draw(V,name,0);
    filename=['./' name '/animation.gif'];
    for i=1:loop
        V_(2:m-1,2:n-1)=(V(3:m,2:n-1)+V(2:m-1,3:n)+V(1:m-2,2:n-1)+V(2:m-1,1:n-2))./4;
        A=(V(1:m-1,1:n-1)<1);
        V_=V_.*A+1-A;
        dV=(V(2:m-1,2:n-1)-V_(2:m-1,2:n-1))./V_(2:m-1,2:n-1);
        V(2:m-1,2:n-1)=V_(2:m-1,2:n-1);
        if(mod(i-1,step)==0)
            draw(V,'');
            frame=getframe(gca);  
            im=frame2im(frame);
            [I,map]=rgb2ind(im,20);
            if(picnum==1)
                imwrite(I,map,filename,'gif', 'Loopcount',Inf,'DelayTime',1/gif_refresh);
            else
                imwrite(I,map,filename,'gif','WriteMode','append','DelayTime',1/gif_refresh);
            end
            picnum=picnum+1;
        end
        if(i==ceil(loop/10))
            draw(V,name,1);
        elseif(i==ceil(loop/2))
            draw(V,name,2);
        end
    end
    draw(V,name,3);
end

