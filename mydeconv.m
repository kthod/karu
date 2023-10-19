function [ c,d ] = mydeconv( a,b,p )

if p == 0
    [c,d] = deconv(a,b) ;
    
else 

    r=a;
    q=zeros(1,size(r,2)-size(b,2)+1);
    i=size(q,2);
    while size(b,2)<=size(r,2)
        
        q(i)=mulZp(r(end),invZp(b(end) , p),p);
        r  =difZp(r,mulZp(q(i),[zeros(1,size(r,2)-size(b,2)) b],p),p);
        r(end) = [];
        i=i-1;
    end
    c=q;
    d=r;
end
end

