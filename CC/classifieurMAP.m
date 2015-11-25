function [res] = classifieurMAP( Test,th1,th2,valtest)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

res=ones(size(Test));
if(th1==th2)
    if (valtest==1) 
        res=res+(Test>th2)
    else
        res=res+(Test<th2)
    end
else
        if (valtest==1) 
            res=2;
            res=res-(Test<=th1)
            res=res-(Test>th2)
        else        
            res=res+(Test<=th1)
            res=res+(Test>th2)
        end    
end   


