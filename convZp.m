function [ z ] = convZp( x,y,p )
if size(x,2) > size(y,2)
    y = [ y zeros(1,size(x,2)-size(y,2))];
elseif size(x,2)<size(y,2) 
    x = [ x zeros(1,size(y,2)-size(x,2))];
end
z = zeros(1,size(x,2) + size(y,2) - 1)  ;
for i = 1:size(z,2)
    z(i) =0;
    for j = 1:size(x,2)
        if( i-j+1 >0) && (i -j+1 <= size(x,2))
            z(i) = sumZp(z(i),mulZp(x(j),y(i-j+1),p),p);
        end
    end
end
z = mod(z,p) ;

end

