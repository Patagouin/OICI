function [ y ] = myGauss(x, u, sigma )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

y = (exp(-1/2*(((x-u)/sigma).^2)))/(sqrt(2*pi)*sigma);

end


