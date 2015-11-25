function [ W ] = perceptron(Y)
% descente de gradient
load OICI-DATA-2015;
C1=ClasseC1;
C2=ClasseC2;

vec1 = ones(size(C1, 1));
vec2 = ones(size(C2, 1));
CP1=[vec1 C1];
CP2 = [vec2 C2];

CS1 = CP1;
CS2 = -1.*CP2;
Y = [CS1; CS2];
end