function [nbBarErreur2,nbSaumonErreur2,valtest,ResBar,ResSaumon,th1ent,th2ent] = evaluateur2(TestBar,TestSaumon,th1ent,th2ent,muBar,muSaumon,sigmaBar,sigmaSaumon)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if th1ent<min(muBar,muSaumon)
    if abs((th1ent-min(muBar,muSaumon)))>(4*max(sigmaBar,sigmaSaumon))
        th1ent=th2ent;
    end
end
if th2ent>max(muBar,muSaumon)
    if abs((th1ent-max(muBar,muSaumon)))>(4*max(sigmaBar,sigmaSaumon))
        th2ent=th1ent;
    end
end

valtest = classifieurMV((th1ent-(th1ent/10)),muBar,muSaumon,sigmaBar,sigmaSaumon);

    
ResBar = classifieurMAP(TestBar,th1ent,th2ent,valtest);
ResSaumon = classifieurMAP(TestSaumon,th1ent,th2ent,valtest);

nbSaumonErreur2 = 2*size(ResSaumon,1)-sum(ResSaumon);
nbBarErreur2=sum(ResBar)-size(ResBar,1);

end

