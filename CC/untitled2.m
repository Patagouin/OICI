f=mvnrnd(10,3,1000);
x=0:0.1:20;
y=mygauss(x,10,3);
muf=mean(f);
sigf=var(f);
ech=randi(1000,1,50);
res=f(ech);
muech=mean(res);
sigech=var(res);
hold on;
histo(f);
plot(x,y*1000);
hold off;