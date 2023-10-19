function [ z ] = divZp( x,y,p )

z = x*invZp(y,p) ;
z = mod(z,p) ;

end

