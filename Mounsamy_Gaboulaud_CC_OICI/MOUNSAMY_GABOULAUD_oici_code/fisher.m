function [ newTrainC1, newTrainC2, newTestC1, newTestC2 ] = fisher( muC1,muC2, C1train,C2train, C1test, C2test )
Sw = (cov(C1train).*(size(C1train, 1) - 1)) + (cov(C2train).*(size(C2train, 1) - 1));
SwInv = inv(Sw);
Wmu = muC1-muC2;
v = SwInv * Wmu';

newTrainC1 = transpose(v' * C1train');
newTrainC2 = transpose(v' * C2train');

newTestC1 = transpose(v' * C1test');
newTestC2 = transpose(v' * C2test');

end

