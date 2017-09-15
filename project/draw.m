function draw(V,name,id)
    global format;
    m=size(V,1);n=size(V,2);
    imagesc(V);
    colorbar;
    set(gca,'XAxisLocation','top');   
    set(gca,'XTick',0:n/10:n);
    set(gca,'YTick',0:m/10:m);
    
    if(length(name)>0)
        saveas(gca,['./' name '/potential_' num2str(id) '_no_contour.' format]);
        if(id>0)
            hold on;
            contour(V,0:0.2:1,'black','ShowText','on');
            hold off;
        end
        saveas(gca,['./' name '/potential_' num2str(id) '.' format]);    
    end
end

