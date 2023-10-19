function [ z ] = invZp( a,p )

[d, x, y] = ext_eu_alg_int(a,p) ;% 

z = mod(x,p) ;

end

