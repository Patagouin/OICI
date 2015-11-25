function [ Ctranspose,Cproj1 ] = ACP_CC( Classe)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
mean1=mean(Classe);
C=Classe-repmat(mean1,size(Classe,1),1);
S1=(size(C,1)-1)*cov(C);
[e,lambda]=eigs(S1);
W2=transpose([e(:,1),e(:,2)]);
Ctranspose=transpose(W2*C');
W1=transpose([e(:,1)]);
Cproj1=transpose(W1*C');


end

