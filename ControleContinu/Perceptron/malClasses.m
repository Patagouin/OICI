function [ Ytild ] = malClasses( Y, w )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
w
Y

diff = w * transpose(Y);
Indices = find(diff < 0);

Ytild = Y(Indices(:), :); % Y(Indices)

end

