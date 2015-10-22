[VTBar, VTSaumon] = initialisation2D();
nbIter = 100;
for i=1:nbIter
    [TrainBar, TrainSaumon,TestBar,TestSaumon] = extractTrain(VTBar,VTSaumon);
    [muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon] = trainModeleMV2C_2D(TrainBar,TrainSaumon);
    %[nbBarErrorMV, nbSaumonErrorMV,nbBarErrorSeuil, nbSaumonErrorSeuil ] = evaluateClassifier(TestBar,TestSaumon,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon)
    resBarMV = classifieurMV2D(TestBar,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
    resSaumonMV = classifieurMV2D(TestSaumon,muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
    IdErrorBar = find(resBarMV==2);
    IdErrorSaumon = find(resSaumonMV==1);
    %TestBar(tmp,:)
    VerrorBar = TestBar(IdErrorBar,:);
    VerrorSaumon = TestSaumon(IdErrorSaumon,:);
    %Verror(1,) = VerrorTmp; 
    %Verror(2,i) = TestSaumon(find(nbSaumonErrorMV==2),:);
    %Verror(3,i) = TestBar(find(nbBarErrorSeuil==1),:);
    %Verror(4,i) = TestSaumon(find(nbSaumonErrorSeuil==2),:);
end;
hold on;
figure(1);
scatter(TestBar(:,1),TestBar(:,2),'b');
scatter(TestSaumon(:,1),TestSaumon(:,2),'r');

hold off;

hold on;
figure(2);
scatter(VerrorBar(:,1),VerrorBar(:,2),'r');
scatter(VerrorSaumon(:,1),VerrorSaumon(:,2),'b');
hold off;

figure(3)
hold on
x1= -20 : .2: 25;
x2= -20 : .2: 25;

[X1,X2]=meshgrid(x1,x2);

Fsaum=mvnpdf([X1(:) X2(:)],muTrainSaumon,sigmaTrainSaumon);

Fsaum=reshape(Fsaum, length(x2), length(x1));

Fbar=mvnpdf([X1(:) X2(:)],muTrainBar,sigmaTrainBar);

Fbar=reshape(Fbar, length(x2), length(x1));


contour(x1,x2,Fsaum);

contour(x1,x2,Fbar);

scatter(VerrorBar(:,1),VerrorBar(:,2),'r');
scatter(VerrorSaumon(:,1),VerrorSaumon(:,2),'r');

axis([4 24 -2 16], 'square');

hold off;



%scatter(Verro(2,1,:),Verro(2,2,:),'r');
%plot(Verror(1, :),'b');
%plot(Verror(2, :), 'r');
%figure(2);
%hist(Verror(1, :),'b');
%hist(Verror(2, :),'r');

%hist(Verror(3, :),'b');
%hist(Verror(4, :),'r');
%visuTeorique(muTrainBar,sigmaTrainBar,muTrainSaumon,sigmaTrainSaumon);
%hold off;

%visuTeorique(7,3,10,2);