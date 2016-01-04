function [ ] = visu_MC_bayesien( resC1, resC2, testC1, testC2,nameC1, nameC2)

%C1 mal classé
C1mc = testC1(resC1==1,:,:);

C1bc = testC1(resC1==0,:,:);
%C2 mal classé
C2mc = testC2(resC2==1,:,:);

C2bc = testC2(resC2==0,:,:);

colorC1 = attribColor(nameC1);
colorC2 = attribColor(nameC2);

figure('Name','Mal classés','NumberTitle','off') 
title(strcat(nameC1,'&',nameC2));
hold on;
scatter3(C1mc(:,1),C1mc(:,2),C1mc(:,3),'g','o');
scatter3(C2mc(:,1),C2mc(:,2),C2mc(:,3),'g','+');
scatter3(C1bc(:,1),C1bc(:,2),C1bc(:,3),colorC1,'o');
scatter3(C2bc(:,1),C2bc(:,2),C2bc(:,3),colorC2,'+');
legend(strcat(nameC1,' mal classé'),strcat(nameC2,' mal classé'),nameC1,nameC2,'Location','northwest')
hold off;

end

