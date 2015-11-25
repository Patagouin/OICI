[VTSaumon,VTBar,muSaumon,sigmaSaumon,muBar,sigmaBar]=initialisation();


x=-5:0.1:20;
yBart=mygauss(x,muBar(1),sigmaBar(1));
ySaumont=mygauss(x,muSaumon(1),sigmaSaumon(1));
[th1,th2]=separateur( muSaumon(1),sigmaSaumon(1),muBar(1),sigmaBar(1))
vectormaxt=[muBar(1)+4*sigmaBar(1),muSaumon(1)+4*sigmaSaumon(1)];
vectormint=[muBar(1)-4*sigmaBar(1),muSaumon(1)-4*sigmaSaumon(1)];

yBarl=mygauss(x,muBar(2),sigmaBar(2,2));
ySaumonl=mygauss(x,muSaumon(2),sigmaSaumon(2,2));
[th1l,th2l]=separateur( muSaumon(2),sigmaSaumon(2,2),muBar(2),sigmaBar(2,2))
vectormaxl=[muBar(2)+4*sigmaBar(2,2),muSaumon(2)+4*sigmaSaumon(2,2)];
vectorminl=[muBar(2)-4*sigmaBar(2,2),muSaumon(2)-4*sigmaSaumon(2,2)];

minval=min(VTSaumon(1),VTBar(1));
minval=min(minval);
maxval=max(VTSaumon(1),VTBar(1));
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

maxXl=max(vectormaxl);
minXl=min(vectorminl);

figure(2);
hold on;
axis([minXl maxXl 0 0.4]);
axis square;
plot(x,yBarl,'b');
plot(x,ySaumonl,'r');

deb1l= [th1l th1l];
fin1l=[0 0.4];
plot(deb1l, fin1l);
deb2l= [th2l th2l];
fin2l=[0 0.4];
plot(deb2l, fin2l);
hold off;

x1= minX:.2:maxX;
x2=minXl:.2:maxXl;
[x1,x2]=meshgrid(x1,x2);
F1=mvnpdf([x1(:) x2(:)],muBar,sigmaBar);
F1=reshape(F1,length(x2),length(x1));

F2=mvnpdf([x1(:) x2(:)],muSaumon,sigmaSaumon);
F2=reshape(F2,length(x2),length(x1));



nbIter = 100;
sizeTrain = 100;
for i=1:nbIter
    [TrainSaumon,TrainBar,TestSaumon,TestBar]= extractionVT2D( sizeTrain,VTSaumon,VTBar );
    [muSaumonTrain,sigmaSaumonTrain,muBarTrain,sigmaBarTrain]=entrainement(TrainSaumon,TrainBar);
    %[th1ent,th2ent]=separateur( muSaumonTrain,sigmaSaumonTrain,muBar,sigmaBarTrain );

    [nbBarErreur1,nbSaumonErreur1,ResSaumon,ResBar] = evaluateur1_2D( TestBar,TestSaumon,muBarTrain,sigmaBarTrain,muSaumonTrain,sigmaSaumonTrain );
    VError1(1,i)=nbBarErreur1(1);
    VError1(2,i)=nbSaumonErreur1(1);
    %VError1(3,i)=nbBarErreur1(2);
    %VError1(4,i)=nbSaumonErreur1(2);
    %[nbBarErreur2,nbSaumonErreur2,valtest,ResBar,ResSaumon,th1ent(1),th2ent(1)] = evaluateur2(TestBar,TestSaumon,th1ent(1),th2ent(1),muBar(1),muSaumon(1),sigmaBar(1),sigmaSaumon(1));
    %VError2(1,i)=nbBarErreur2(1);
    %VError2(2,i)=nbSaumonErreur2(1);
    %VError2(3,i)=nbBarErreur2(2);
    %VError2(4,i)=nbSaumonErreur2(2);
    %VError2(5,i)=th1ent(1);
    %VError2(6,i)=th2ent(1);
end;

ImageBarError=TestBar(find(ResBar==2),:);
ImageSaumonError=TestSaumon(find(ResSaumon==1),:);

figure(3);

hold on;
xlabel('taille');
ylabel('luminence');
scatter(VTSaumon(:,1),VTSaumon(:,2),'b','+');
scatter(VTBar(:,1),VTBar(:,2),'r','+');
scatter(ImageBarError(:,1),ImageBarError(:,2),'g','o');
scatter(ImageSaumonError(:,1),ImageSaumonError(:,2),'g','o');
contour(x1,x2,F1);
contour(x1,x2,F2);
hold off;
