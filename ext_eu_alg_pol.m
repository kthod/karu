function [ g,s,t ] = ext_eu_alg_pol( a, b ,p)
r_minus_1 = a ;
r_0 = b ;
x_minus_1 = 1 ;
x_0 = 0 ;
y_minus_1 = 0 ;
y_0 = 1 ;

while r_0 ~= 0
    [q, r] = mydeconv(r_minus_1, r_0 ,p) ;
    r_minus_1 = r_0 ;
    r_0 = r ;
    x = difZp(x_minus_1 , convZp(q,x_0,p) , p);
    x_minus_1 = x_0 ;
    x_0 = x ;
    y = difZp(y_minus_1 , convZp(q,y_0,p),p) ;
    y_minus_1 = y_0 ;
    y_0 = y ;
end

s = x_minus_1 ;
t = y_minus_1 ;
g = r_minus_1 ;

end


