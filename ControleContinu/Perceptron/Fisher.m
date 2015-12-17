function [ v ] = Fisher( Classe1,Classe2)
mean1=mean(Classe1);
mean2=mean(Classe2);
Sw=cov(Classe1)*[size(Classe1,1)-1]+cov(Classe2)*[size(Classe2,1)-1];
Swinv=inv(Sw);
Wmu =(mean1-mean2);
v=Swinv*Wmu';