function [F] = untitled2(X,mu,sigma)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
F=mvnpdf([x1(:) x2(:)],mu,sigma);
F=reshape(F,length(x2),length(x1));
contour(x1,x2,F);
axis([-3 3 -3 3], 'square');

end

