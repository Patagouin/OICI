[VTSaumon,VTBar,muSaumon,sigmaSaumon,muBar,sigmaBar]=initialisation3D();

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
clf('reset');
figure(3);

hold on;
grid on;
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