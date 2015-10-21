
% res est un veteur res[i] = 1 <--> test[i] est bar
function [ res] = classifieurMV( test, uBar , uSaumon , sigBar, sigSaumon )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

%Probtaille
ptSaumon = myGauss(test, uSaumon,sigSaumon);
ptBar = myGauss(test, uBar, sigBar);


res = ones(size(test));
res = res + (ptSaumon > ptBar);


end

