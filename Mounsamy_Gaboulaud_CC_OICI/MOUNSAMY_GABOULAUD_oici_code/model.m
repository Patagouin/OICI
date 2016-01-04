function [ muC1, sigmaC1, muC2, sigmaC2 ] = model( trainC1, trainC2 )

muC1 = mean(trainC1);
sigmaC1 = sqrt(var(trainC1));

muC2 = mean(trainC2);
sigmaC2 = sqrt(var(trainC2));

end

