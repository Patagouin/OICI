function [ th1, th2 ] = separateur( muSaumon,sigmaSaumon,muBar,sigmaBar )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if (sigmaBar==sigmaSaumon)
    th1=(muSaumon*muSaumon)-(muBar*muBar);
    th1=th1/(muSaumon-muBar);
    th1=th1/2;
    th2=th1;
else
    cte=-2*log(sigmaSaumon/sigmaBar);
    
    a=(1/(sigmaSaumon*sigmaSaumon))-(1/(sigmaBar*sigmaBar));
    b=2*((muBar/(sigmaBar*sigmaBar))-(muSaumon/(sigmaSaumon*sigmaSaumon)));
    c=((muSaumon*muSaumon)/(sigmaSaumon*sigmaSaumon))-((muBar.^2)/(sigmaBar*sigmaBar))-cte;
    
    if (a==0)
        th1=b+(cte -c);
        th2=th1;
    else
        delta=sqrt((b.^2)-4*(a*c));
        rac1 = (-b - delta)/(2*a);
        rac2 = (-b + delta)/(2*a);
        
        if (rac1<rac2)
            th1=rac1;
            th2=rac2;
        else
            th1=rac2;
            th2=rac1;
        end
    end
end

