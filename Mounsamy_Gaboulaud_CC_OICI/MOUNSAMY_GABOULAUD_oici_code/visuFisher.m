function [  ] = visuFisher(testC1,testC2,resC1C2_C1,resC1C2_C2, nameC1,nameC2 )

 colorC1 = attribColor(nameC1);
 colorC2 = attribColor(nameC2);

 
%C1 mal classé
C1mc = testC1(resC1C2_C1==1);
%C1 bien classé
C1bc = testC1(resC1C2_C1==0);

%C2 mal classé
C2mc = testC2(resC1C2_C2==1);
%C2 bien classé
C2bc = testC2(resC1C2_C2==0);

figure('Name','Fisher','NumberTitle','off')
title(strcat(nameC1,'&',nameC2));
 hold on;
 plot(C1bc,0,strcat('o',colorC1));
 if(sum(resC1C2_C1)~=0)
    plot(C1mc,0,'og');
 end
 plot(C2bc,0,strcat('+',colorC2));
 if(sum(resC1C2_C2)~=0)
    plot(C2mc,0,'+g');
 end
 
 hold off;


end

