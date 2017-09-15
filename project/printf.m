function printf(name,time,loop,V,Ex,Ey)
    fid=fopen(['./' name '/data.txt'],'w+');
    fprintf(fid,'time: %f s\r\n',time);
    fprintf(fid,'loop: %d\r\n',loop);
    m=size(V,1);n=size(V,2);
    fprintf(fid,'\r\nV={\r\n');
    for i=1:m
        for j=1:n
            fprintf(fid,'{%d, %d, %f}, ',i,j,V(i,j));
        end
        fprintf(fid,'\r\n');
    end
    fprintf(fid,'}\r\n');
    
    fprintf(fid,'\r\nE={\r\n');
    for i=2:m-1
        for j=2:n-1
            fprintf(fid,'{%d, %d, %f, %f}, ',i,j,Ex(i,j),Ey(i,j));
        end
        fprintf(fid,'\r\n');
    end
    fprintf(fid,'}\r\n');
    fclose(fid);
end

