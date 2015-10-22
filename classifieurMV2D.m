function [ res ] = classifieurMV2D( test, mu1, sigma1, mu2, sigma2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

pt1 = mvnpdf(test,mu1,sigma1);
pt2 = mvnpdf(test,mu2,sigma2);

res = ones(size(test(:,1)));
res = res +(pt2 > pt1);
end