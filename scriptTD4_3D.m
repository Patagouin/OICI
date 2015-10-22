[VTBar, VTSaumon] = initialisation3D();
nbIter = 100;
for i=1:nbIter
    [TrainBar, TrainSaumon,TestBar,TestSaumon] = extractTrain3d(VTBar,VTSaumon);
    [muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon] = trainModeleMV2C_3D(TrainBar,TrainSaumon);
   
    resBarMV = classifieurMV3D(TestBar,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
    resSaumonMV = classifieurMV3D(TestSaumon,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
    IdErrorBar = find(resBarMV==2);
    IdErrorSaumon = find(resSaumonMV==1);
   
    VerrorBar = TestBar(IdErrorBar,:);
    VerrorSaumon = TestSaumon(IdErrorSaumon,:);

end;

hold on;
figure(1);
scatter3(TestBar(:,1),TestBar(:,2), TestBar(:,3), 'b');
scatter3(TestSaumon(:,1),TestSaumon(:,2), TestSaumon(:,3), 'r');

hold off;

hold on;
figure(2);
scatter3(VerrorBar(:,1),VerrorBar(:,2), VerrorBar(:,3), 'r');
scatter3(VerrorSaumon(:,1),VerrorSaumon(:,2), VerrorSaumon(:,3), 'b');
hold off;

%figure(3)
%hold on
%x1= -20 : .2: 25;

%[X1,X2]=meshgrid(x1,x2);

%Fsaum=mvnpdf([X1(:) X2(:)],muTrainSaumon,sigmaTrainSaumon);

%Fsaum=reshape(Fsaum, length(x2), length(x1));

%Fbar=mvnpdf([X1(:) X2(:)],muTrainBar,sigmaTrainBar);

%Fbar=reshape(Fbar, length(x2), length(x1));


%contour(x1,x2,Fsaum);

%contour(x1,x2,Fbar);

%scatter(VerrorBar(:,1),VerrorBar(:,2),'r');
%scatter(VerrorSaumon(:,1),VerrorSaumon(:,2),'r');

%axis([4 24 -2 16], 'square');

%hold off;



