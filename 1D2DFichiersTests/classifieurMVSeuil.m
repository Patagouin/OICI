function [ res ] = classifieurMVSeuil( test, mu1, sigma1, mu2, sigma2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[th1,th2] = computeThresoldML(mu1, sigma1, mu2, sigma2);
res = ones(size(test));
res = res+(test > th1 & test < th2);
end