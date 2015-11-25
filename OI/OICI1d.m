[VTSaumon,VTBar,muSaumon,sigmaSaumon,muBar,sigmaBar]=initialisation1d();


x=-5:0.1:20;
yBart=mygauss(x,muBar,sigmaBar);
ySaumont=mygauss(x,muSaumon,sigmaSaumon);
[th1,th2]=separateur( muSaumon,sigmaSaumon,muBar,sigmaBar)
vectormaxt=[muBar+4*sigmaBar,muSaumon+4*sigmaSaumon];
vectormint=[muBar-4*sigmaBar,muSaumon-4*sigmaSaumon];

minval=min(VTSaumon,VTBar);
minval=min(minval);
maxval=max(VTSaumon,VTBar);
maxval=max(maxval);


maxX=max(vectormaxt);
minX=min(vectormint);

figure(1);
hold on;
axis([minX maxX 0 0.4]);
axis square;
plot(x,yBart,'b');
plot(x,ySaumont,'r');

deb1= [th1 th1];
fin1=[0 0.4];
plot(deb1, fin1);
deb2= [th2 th2];
fin2=[0 0.4];
plot(deb2, fin2);
hold off;



hold off;

nbIter = 100;
sizeTrain = 100;
for i=1:nbIter
    [TrainSaumon,TrainBar]= extractionVT( sizeTrain,VTSaumon,VTBar );
    [muSaumonTrain,sigmaSaumonTrain,muBarTrain,sigmaBarTrain]=entrainement(TrainSaumon,TrainBar);
    [th1ent,th2ent]=separateur( muSaumonTrain,sigmaSaumonTrain,muBar,sigmaBarTrain );
    TestBar = VTBar;
    TestSaumon = VTSaumon;
    [nbBarErreur1,nbSaumonErreur1] = evaluateur( TestBar,TestSaumon,muBarTrain,sigmaBarTrain,muSaumonTrain,sigmaSaumonTrain );
    VError1(1,i)=nbBarErreur1;
    VError1(2,i)=nbSaumonErreur1;

    [nbBarErreur2,nbSaumonErreur2,valtest,ResBar,ResSaumon,th1ent,th2ent] = evaluateur2(TestBar,TestSaumon,th1ent,th2ent,muBar,muSaumon,sigmaBar,sigmaSaumon);
    VError2(1,i)=nbBarErreur2;
    VError2(2,i)=nbSaumonErreur2;
    VError2(3,i)=th1ent;
    VError2(4,i)=th2ent;
    VError2(5,i)=valtest;
    VError2(6,i)=th1;
    VError2(7,i)=th2;
    VError2(8,i)=minval;
end;

