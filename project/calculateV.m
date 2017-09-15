function [V,time,loop] = calculateV(V,epsilon)
    tic;loop=0;
    m=size(V,1);n=size(V,2);
    while(1)
        loop=loop+1;
        V_(2:m-1,2:n-1)=(V(3:m,2:n-1)+V(2:m-1,3:n)+V(1:m-2,2:n-1)+V(2:m-1,1:n-2))./4;
        A=(V(1:m-1,1:n-1)<1);
        V_=V_.*A+1-A;
        dV=(V(2:m-1,2:n-1)-V_(2:m-1,2:n-1))./V_(2:m-1,2:n-1);
        V(2:m-1,2:n-1)=V_(2:m-1,2:n-1);
        if(sum(sum(abs(dV)>=epsilon))==0)
            break;
        end
    end
    time=toc;
end

