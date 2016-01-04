function [] = CC1a_visu4classes3D( C1,C2,C3,C4 )
% 1]Etude des données.
%   a)Afficher les différentes classes deux à deux en 3D

%C1 = rouge;
%C2 = bleu;
%C3 = cyan;
%C4 = magenta;

%C1 & C2
figure('Name','Visualisations des classes en 3D','NumberTitle','off') 
title('C1 et C2');
hold on;
scatter3(C1(:,1),C1(:,2),C1(:,3),'r');
scatter3(C2(:,1),C2(:,2),C2(:,3),'b');
legend('C1','C2','Location','northwest')
hold off;

%C1 & C3
figure('Name','Visualisations des classes en 3D','NumberTitle','off') 
title('C1 et C3');
hold on;
scatter3(C1(:,1),C1(:,2),C1(:,3),'r');
scatter3(C3(:,1),C3(:,2),C3(:,3),'c');
legend('C1','C3','Location','northwest')
hold off;

%C1 & C4
figure('Name','Visualisations des classes en 3D','NumberTitle','off') 
title('C1 et C4');
hold on;
scatter3(C1(:,1),C1(:,2),C1(:,3),'r');
scatter3(C4(:,1),C4(:,2),C4(:,3),'m');
legend('C1','C4','Location','northwest')
hold off;

%C2 & C3
figure('Name','Visualisations des classes en 3D','NumberTitle','off') 
title('C2 et C3');
hold on;
scatter3(C2(:,1),C2(:,2),C2(:,3),'b');
scatter3(C3(:,1),C3(:,2),C3(:,3),'c');
legend('C2','C3','Location','northwest')
hold off;

%C2 & C4
figure('Name','Visualisations des classes en 3D','NumberTitle','off') 
title('C2 et C4');
hold on;
scatter3(C2(:,1),C2(:,2),C2(:,3),'b');
scatter3(C4(:,1),C4(:,2),C4(:,3),'m');
legend('C2','C4','Location','northwest')
hold off;

%C3 & C4
figure('Name','Visualisations des classes en 3D','NumberTitle','off') 
title('C3 et C4');
hold on;
scatter3(C3(:,1),C3(:,2),C3(:,3),'c');
scatter3(C4(:,1),C4(:,2),C4(:,3),'m');
legend('C3','C4','Location','northwest')
hold off;

end

