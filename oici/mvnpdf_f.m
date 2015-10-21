mu = [ 0 0];
sigma = [ 1 0.9; 0.9 1];

x1 = -3:0.2:3;
x2 = -3:0.2:3; %deep copy

[ X1, X2] = meshgrid(x1, x2);
f = mvnpdf([X1(:) X2(:)], mu, sigma);
F = reshape(f, length(x1), length(x2));