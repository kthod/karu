function [ g,s,t ] = ext_eu_alg_int( a, b )
r_minus_1 = a ;
r_0 = b ;
x_minus_1 = 1 ;
x_0 = 0 ;
y_minus_1 = 0 ;
y_0 = 1 ;

while r_0 ~= 0
    [q, r] = quorem(sym(r_minus_1), sym(r_0)) ;
    r_minus_1 = r_0 ;
    r_0 = r ;
    x = x_minus_1 - q*x_0;
    x_minus_1 = x_0 ;
    x_0 = x ;
    y = y_minus_1 - q*y_0 ;
    y_minus_1 = y_0 ;
    y_0 = y ;
end

s = x_minus_1 ;
t = y_minus_1 ;
g = r_minus_1 ;

end

