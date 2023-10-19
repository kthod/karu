function [ z ] = difZp( x, y, p )

z = x-y ;
z = mod(z, p) ;

end

