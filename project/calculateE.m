function [ Ex,Ey ] = calculateE( V )

    m=size(V,1);n=size(V,2);
    Ex(2:m-1,2:n-1)=(V(2:m-1,3:n)-V(2:m-1,1:n-2))./(-2);
    Ey(2:m-1,2:n-1)=(V(3:m,2:n-1)-V(1:m-2,2:n-1))./(-2);
    Ex(m,:)=0;Ex(:,n)=0;
    Ey(m,:)=0;Ey(:,n)=0;
    
end

