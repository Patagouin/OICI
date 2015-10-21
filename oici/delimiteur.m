function [ th1 th2 ] = delimiteur( mu1, mu2, sig1, sig2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if (sig1 == sig2)
    th1 = (mu1 * mu1) - (mu2 * mu2);
    th1 = th1 / (mu1 - mu2); 
    th1 = th1/2; 
    th2 = th1;
else
    cte = -2*log(sig1/sig2);
    
    a = 1/(sig1*sig1) - 1/(sig2*sig2);
    b = 2 * ((mu2/(sig2*sig2)) - (mu1/(sig1*sig1)));
    c = (mu1*mu1)/ (sig1*sig1) - (mu2*mu2)/(sig2*sig2);
    c = c - cte;
    if (a == 0)
        th1 = b + (cte - c);
        th2 = th1;
    else
        delta = b*b - (4*a*c);
        rac1 = (-b + sqrt(delta)) / (2*a);
        rac2 = (-b - sqrt(delta)) / (2*a);
        if ( delta < 0)
            th1 = 0;
            th2 = 0;
        elseif ( delta == 0)
             th1 = -b/ (2*a);
             th2 = 0;
        else
            th1 = rac1;
            th2 = rac2;

        end
        
     end
            
        
end

