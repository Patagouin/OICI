function [ Wk, W ] = perceptron(Y)
% descente de gradient
% 
% mu1 = mean(Y, 1);
% matMu1 = repmat(mu1, size(Y,1),1);
% YC = Y-matMu1;
% S=size(YC,1)*cov(YC);
% [v l]= eig(S);

Wk = zeros(1, 3);
W = ones(1,3);%v(1,:);

epsilon = 0.1;


precedent = Wk;
suivant = W;
tmp = W;
cpt = 0;
while(norm(suivant - precedent) > epsilon)
    cpt = cpt + 1;
    precedent = tmp;
    MC = malClasses(Y, precedent);
    
  suivant  = precedent + (1/cpt) * sum(MC);
  tmp = suivant;
end 
 
Wk = suivant;
W = precedent;

end