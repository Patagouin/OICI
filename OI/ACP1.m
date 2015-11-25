load OICI-DATA-2015;
mean1=mean(ClasseC1);
C=ClasseC1-repmat(mean1,size(ClasseC1,1),1);
S1=(size(C,1)-1)*cov(C);
[e,lambda]=eigs(S1);
W2=transpose([e(:,1),e(:,2)]);
Ctranspose=transpose(W2*C');
W1=transpose([e(:,1)]);
Cproj1=transpose(W1*C');


figure(1)
hold on;
scatter(VTSaumon(:,1),VTSaumon(:,2),'b','+');
hold off;