mu = [0,0];
sigma = [1 -0.9 ; -0.9 1];
x1 = -3:.2:3;
x2 = -3:.2:3;
[X1,X2] = meshgrid(x1,x2)
F = mvnpdf([X1(:) X2(:)],mu,sigma);
F = reshape(F,length(x2),length(x1));
contour(x1,x2,F);
axis([-3 3 -3 3],'square');
vprop = e