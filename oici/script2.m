%hold on;

z = mvnrnd(10,3, 1000);
moy = mean(z)
sigmaz = var(z) %variance

index = randi(1000,1,50);

res = z(index);


%hold off;