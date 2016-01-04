%MOUNSAMY Yanis & GABOULAUD Tony
%CC OICI

load OICI-DATA-2015;
C1=ClasseC1;
C2=ClasseC2;
C3=ClasseC3;
C4=ClasseC4;

%CC1a_visu4classes3D(C1,C2,C3,C4);


nbIter = 100;
sizeTrain = 100;
sizeTest = 500;

ErrorBayesienAll = classification_Bayesien_all(C1,C2,C3,C4,nbIter,sizeTrain,sizeTest);

errorBay = zeros(nbIter,3);
errorACP1 = zeros(nbIter,3);
errorACP2 = zeros(nbIter,3);
errorFisher = zeros(nbIter,3);
errorPerceptron = zeros(nbIter,3);

for i=1:nbIter
    [trainC1,trainC3,trainC4,testC1,testC3,testC4] = extractTrainAndTest_3class(C1,C3,C4,sizeTrain,sizeTest);
        
    %Classification Bayesienne
    [ resC1C3_bay, resC1C4_bay, resC3C4_bay, error_bay ] = classification_Bayesien_CC( trainC1, trainC3, trainC4, testC1, testC3, testC4 );
    
    errorBay(i,:)=error_bay;
    
    %ACP
    [resC1C3_acp, resC1C4_acp, resC3C4_acp, error_acp2D, error_acp1D, proj2D,proj1D] = classification_ACP_CC( trainC1, trainC3, trainC4, testC1, testC3, testC4 );
    errorACP1(i,:)=error_acp1D;
    errorACP2(i,:)=error_acp2D;
    
    %Fisher
    [resC1C2_fish, resC1C4_fish, resC3C4_fish, error_fisher ,testFisher] = Classification_Fisher_CC( trainC1, trainC3, trainC4, testC1, testC3, testC4 );
    errorFisher(i,:)=error_fisher;
    
    %Perceptron
    [error_perceptron]=classification_Perceptron(testC1,testC3,testC4);
    errorPerceptron(i,:)=error_perceptron;
    
end

 %visu_MC_bayesien( resC3C4_bay(:,1), resC3C4_bay(:,2), testC3, testC4, 'C1', 'C4');
    %visu_MC_bayesien( resC1C4_acp(:,1), resC1C4_acp(:,2), testC1, testC4, 'C1', 'C4');
    %visuACP (proj1D{3},proj1D{4},proj2D{3},proj2D{4},'C1','C4');
    %visuFisher(testFisher{2}(:,1),testFisher{2}(:,2),resC1C4_fish(:,1),resC1C4_fish(:,2),'C1','C4');

    %colonne 1 : erreur C1C3
    %colonne 2 : erreur C1C4
    %colonne 3 : erreur C3C4
    errorClassifieurs = zeros(5,3);
    errorClassifieurs(1,:) = mean(errorBay);
    errorClassifieurs(2,:) = mean(errorACP2);
    errorClassifieurs(3,:) = mean(errorACP1);
    errorClassifieurs(4,:) = mean(errorFisher);
    errorClassifieurs(5,:) = mean(errorPerceptron);
    

    display(errorClassifieurs);