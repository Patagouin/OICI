
C1=[2 1; 4 3];
C2=[1 3; 5 6; 3 5 ];
Y = transforme(C1, C2)

mu1 = mean(Y, 1);
matMu1 = repmat(mu1, size(Y,1),1);
YC = Y-matMu1;
S=size(YC,1)*cov(YC);
[v l]= eig(S);

Wk = zeros(1, 3)
W = v(1,:)