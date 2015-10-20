

function [  ] = tracerLigne( a, b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    v = [a, b]
    v1 = v'
    
    n = v*v1
    
    v2 = [a; b] % Le point virgule change de ligne

    v3 = v2' * v2
end

