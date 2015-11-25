function [VTSaumon,VTBar,muSaumon,sigmaSaumon,muBar,sigmaBar] = initialisation3D( input_args )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
muSaumon = [10,5,7];
sigmaSaumon = [1 0 0;0 3 0;0 0 5];
muBar = [17,8,10];
sigmaBar = [1 0 0;0 2 0;0 0 4];
sizeVT = 1000;
VTSaumon = mvnrnd(muSaumon,sigmaSaumon,sizeVT);
VTBar = mvnrnd(muBar,sigmaBar,sizeVT);
end
