function [ mc_p,Wk, W ] = perceptron(Y)

Wk = zeros(1,size(Y,2));
W = ones(1,size(Y,2));

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
mc_p=MC;
end