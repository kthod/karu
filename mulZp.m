function [ z ] = mulZp( x,y,p )

z = x*y ;
z = mod(z,p) ;

end

