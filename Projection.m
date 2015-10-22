load('OICI-DATA-2015');

mu1 = mean(ClasseC1,1);

matMu1 = repmat(mu1, size(ClasseC1, 1), 1);
C1C = ClasseC1 - matMu1;

S = size(C1C, 1) * cov(C1C);

[v l] = eig(S);

e1 = v(1,:)

Proj = transpose(e1) * C1C
