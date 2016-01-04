function [] = visuACP( C1_1D,C2_1D,C1_2D,C2_2D ,nameC1,nameC2)
  
 colorC1 = attribColor(nameC1);
 colorC2 = attribColor(nameC2); 

 figure('Name','ACP 2D','NumberTitle','off') 
 title(strcat(nameC1,'&',nameC2));
 hold on;
 scatter(C1_2D(:,1),C1_2D(:,2),colorC1,'o');
 scatter(C2_2D(:,1),C2_2D(:,2),colorC2,'+');
 legend(nameC1,nameC2,'Location','northwest')
 hold off;

 figure('Name','ACP 1D','NumberTitle','off') 
 title(strcat(nameC1,'&',nameC2));
 hold on;
 plot(C1_1D,0,strcat('o',colorC1));
 plot(C2_1D,0,strcat('+',colorC2));
 %legend(nameC1,nameC2,'Location','northwest')
 hold off;
 
end

