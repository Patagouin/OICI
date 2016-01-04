function [ muC1, sigmaC1, muC2, sigmaC2, muC3, sigmaC3 ] = model_3class( trainC1, trainC2, trainC3 )

muC1 = mean(trainC1);
sigmaC1 = sqrt(var(trainC1));

muC2 = mean(trainC2);
sigmaC2 = sqrt(var(trainC2));

muC3 = mean(trainC3);
sigmaC3 = sqrt(var(trainC3));

end