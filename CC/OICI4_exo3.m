[VTSaumon,VTBar,muSaumon,sigmaSaumon,muBar,sigmaBar]=initialisation_exo3();

nbIter = 100;
sizeTrain = 100;
for i=1:nbIter
    [TrainSaumon,TrainBar,TestSaumon,TestBar]= extractionVT2D( sizeTrain,VTSaumon,VTBar );
    [muSaumonTrain,sigmaSaumonTrain,muBarTrain,sigmaBarTrain]=entrainement(TrainSaumon,TrainBar);
    %[th1ent,th2ent]=separateur( muSaumonTrain,sigmaSaumonTrain,muBar,sigmaBarTrain );

    [nbBarErreur1,nbSaumonErreur1,ResSaumon,ResBar] = evaluateur1_2D( TestBar,TestSaumon,muBarTrain,sigmaBarTrain,muSaumonTrain,sigmaSaumonTrain );
    VError1(1,i)=nbBarErreur1(1);
    VError1(2,i)=nbSaumonErreur1(1);
    [nbBarErreur2D1,nbSaumonErreur2D1,ResSaumon2D1,ResBar2D1] = evaluateur1_2D( TestBar(:,1:2),TestSaumon(:,1:2),muBarTrain(1:2),sigmaBarTrain(1:2,1:2),muSaumonTrain(1:2),sigmaSaumonTrain(1:2,1:2) );
    fooBarTest=[TestBar(:,1) TestBar(:,3)];
    fooSaumonTest=[TestSaumon(:,1) TestSaumon(:,3)];
    fooMuBar=[muBarTrain(1) muBarTrain(3)];
    fooMuSaumon=[muSaumonTrain(1) muSaumonTrain(3)];
    fooSigBar=[sigmaBarTrain(1,1) sigmaBarTrain(1,3);sigmaBarTrain(3,1) sigmaBarTrain(3,3)];
    fooSigSaumon=[sigmaSaumonTrain(1,1) sigmaSaumonTrain(1,3);sigmaSaumonTrain(3,1) sigmaSaumonTrain(3,3)];
    [nbBarErreur2D2,nbSaumonErreur2D2,ResSaumon2D2,ResBar2D2] = evaluateur1_2D( fooBarTest,fooSaumonTest,fooMuBar,fooSigBar,fooMuSaumon,fooSigSaumon );
    [nbBarErreur2D3,nbSaumonErreur2D3,ResSaumon2D3,ResBar2D3] = evaluateur1_2D( TestBar(:,2:3),TestSaumon(:,2:3),muBarTrain(2:3),sigmaBarTrain(2:3,2:3),muSaumonTrain(2:3),sigmaSaumonTrain(2:3,2:3) );
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

ImageBarError1=TestBar(find(ResBar2D1==2),:);
ImageBarError1=ImageBarError1(:,1:2);
ImageSaumonError1=TestSaumon(find(ResSaumon2D1==1),:);
ImageSaumonError1=ImageSaumonError1(:,1:2);

ImageBarError2=TestBar(find(ResBar2D2==2),:);
ImageBarError2=[ImageBarError2(:,1) ImageBarError2(:,3)];
ImageSaumonError2=TestSaumon(find(ResSaumon2D2==1),:);
ImageSaumonError2=[ImageSaumonError2(:,1) ImageSaumonError2(:,3)];

ImageBarError3=TestBar(find(ResBar2D3==2),:);
ImageBarError3=ImageBarError3(:,2:3);
ImageSaumonError3=TestSaumon(find(ResSaumon2D3==1),:);
ImageSaumonError3=ImageSaumonError3(:,2:3);

clf('reset');
figure(3);

hold on;
grid on
xlabel('taille');
ylabel('luminence');
zlabel('poids');
scatter3(VTSaumon(:,1),VTSaumon(:,2),VTSaumon(:,3),'b','+');
scatter3(VTBar(:,1),VTBar(:,2),VTBar(:,3),'r','+');
scatter3(ImageBarError(:,1),ImageBarError(:,2),ImageBarError(:,3),'g','o');
hold off;

figure(4);
hold on;
grid on;
xlabel('taille');
ylabel('luminence');
zlabel('poids');
scatter3(ImageSaumonError(:,1),ImageSaumonError(:,2),ImageSaumonError(:,3),'g','o');

hold off;


figure(5);
hold on;
grid on;
xlabel('taille');
ylabel('luminence');
scatter(VTSaumon(:,1),VTSaumon(:,2),'b','+');
scatter(VTBar(:,1),VTBar(:,2),'r','+');
scatter(ImageBarError1(:,1),ImageBarError1(:,2),'g','o');
scatter(ImageSaumonError2(:,1),ImageSaumonError2(:,2),'g','o');

hold off;

figure(6);
hold on;
grid on;
xlabel('taille');
ylabel('luminence');
scatter(VTSaumon(:,1),VTSaumon(:,3),'b','+');
scatter(VTBar(:,1),VTBar(:,3),'r','+');
scatter(ImageBarError2(:,1),ImageBarError2(:,2),'g','o');
scatter(ImageSaumonError2(:,1),ImageSaumonError2(:,2),'g','o');

hold off;

figure(7);
hold on;
grid on;
xlabel('taille');
ylabel('luminence');
scatter(VTSaumon(:,2),VTSaumon(:,3),'b','+');
scatter(VTBar(:,2),VTBar(:,3),'r','+');
scatter(ImageBarError3(:,1),ImageBarError3(:,2),'g','o');
scatter(ImageSaumonError3(:,1),ImageSaumonError3(:,2),'g','o');

hold off;