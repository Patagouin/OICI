mu = 10;
sigma = 3;

x = mvnrnd(mu,sigma,100);

hold on;

hist(x, 16);

x = 0:0.1:20;

gauss  = myGauss(x,mu,sigma);

gauss = gauss .* 100;
plot(x,gauss);
hold off;