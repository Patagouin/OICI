function [ nbBarErrorMV, nbSaumonErrorMV, nbBarErrorMVSeuil, nbSaumonErrorMVSeuil ] = evaluateClassifier(TestBar,TestSaumon,muBar,sigmaBar,muSaumon,sigmaSaumon)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ResBar = classifieurMV(TestBar,muBar,sigmaBar,muSaumon,sigmaSaumon);
ResSaumon = classifieurMV(TestSaumon,muBar,sigmaBar,muSaumon,sigmaSaumon);

resBarSeuil = classifieurMVSeuil(TestBar,muBar,sigmaBar,muSaumon,sigmaSaumon);
resSaumonSeuil = classifieurMVSeuil(TestSaumon,muBar,sigmaBar,muSaumon,sigmaSaumon);

nbBarErrorMV = sum(ResBar)-size(ResBar,1);
nbSaumonErrorMV = 2*size(ResSaumon,1)-sum(ResSaumon);

nbBarErrorMVSeuil = sum(resBarSeuil)-size(resBarSeuil,1);
nbSaumonErrorMVSeuil = 2*size(resSaumonSeuil,1)-sum(resSaumonSeuil);
%errorb = ResBar - 1
%errors = 2 - ResSaumon;
%nbBarError = sum(errorb)/size(TestBar,1);
%nbSaumonError = sum(errors)/size(TestSaumon,1);
end