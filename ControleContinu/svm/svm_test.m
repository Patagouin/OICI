trn = load('riply_trn')  % load training data
%load OICI-DATA-2015;

%trn = load (OICI-DATA-2015;

options.ker = 'rbf'; % use RBF kernel
options.arg = 1; % kernel argument
options.C = 10; % regularization constant
% train SVM classifier

model = svmlight(trn,options);
%visualization
figure;
ppatterns(trn); psvm(model);
tst = load('riply_tst'); % load testing data
ypred = svmclass(tst.X,model); % classify data
cerror(ypred,tst.y);