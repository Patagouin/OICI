load ../../OICI-DATA-2015;
C1b=ClasseC1;
C2b=ClasseC2;
C1 = C1b(1:200, :);
C2 = C2b(1:200, :);
% Transformation des données

data.X = [C1; C2]'; % Rajout en fin de colonne
c1c = ones(1, size(C1, 1));
c2c = 2*ones(1, size(C2, 1));

%data.y = ones(size(C1, 1), 1);
data.y = [c1c c2c];

data.num_data = 100;
data.dim = 3;
data.name = 'Class C1 & C2';

options.ker = 'linear'; % use RBF kernel
options.arg = 1; % kernel argument
options.C = 10; % regularization constant

% train SVM classifier
model = svmlight(data,options);

% visualization
figure;
ppatterns(data); psvm(model);

% load testing data



%ypred = svmclass(tst.X,model); % classify data
%cerror(ypred,tst.y)