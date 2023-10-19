% Toganidis Nikos 2018030085
% Kalamarakis Thodoris 2018030022
% Exerice 9 / THL 511

clear all ;
close all ;
clc ;

a = [1 5 2 6 4] ;
b = [3 2 1] ;





[c d] = mydeconv(a,b,7)


[g s t] = ext_eu_alg_pol( a, b ,7)