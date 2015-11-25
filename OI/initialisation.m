function [VTSaumon,VTBar,muSaumon,sigmaSaumon,muBar,sigmaBar] = initialisation( input_args )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
muSaumon = [15,15];
sigmaSaumon = [2 0;0 2];
muBar = [10,10];
sigmaBar = [2 0;0 2];
sizeVT = 1000;
VTSaumon = mvnrnd(muSaumon,sigmaSaumon,sizeVT);
VTBar = mvnrnd(muBar,sigmaBar,sizeVT);
end

