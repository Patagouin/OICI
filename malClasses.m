function [ Ytild ] = malClasses( Y, w )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

diff = w * Y;
Indices = find(diff < 0);

Ytild = Y(Indices);

end

