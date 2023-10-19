function [ z ] = difZp_2( x,y,p )


if size(x,2) > size(y,2)
    y = [ y zeros(1,size(x,2)-size(y,2))];
elseif size(x,2)<size(y,2) 
    x = [ x zeros(1,size(y,2)-size(x,2))];
end;

z= difZp(x,y,p);

end