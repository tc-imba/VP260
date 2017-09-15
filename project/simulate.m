function simulate(type,m,n,epsilon,name)
    
    % Initialize
    switch(type)
    case 'A'
        V=ones(m,n)./2;
        V(:,1)=0;V(:,n)=0;
        V(1,:)=1;V(n,:)=0;
    case 'B'
        V=ones(m,n)./2;
        V(:,1)=1;V(:,n)=1;
        V(1,:)=0;V(n,:)=1;
    case 'C'
        V=ones(m,n)./2;
        V(:,1)=0;V(:,n)=0;
        V(1,:)=1;V(n,:)=0;
        V(1:floor(m/2),floor(n/2))=1;
    otherwise
        return;
    end

    % Simulate and draw
    makedir(name);
    [V_,time,loop]=calculateV(V,epsilon);
    animate(V,loop,name);
    [Ex,Ey]=calculateE(V_);
    drawfield(Ex,Ey,name);
    printf(name,time,loop,V_,Ex,Ey);
    
end

