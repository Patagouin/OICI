
load OICI-DATA-2015;
%C1=ClasseC1;
%C2=ClasseC2;



C1=[2 1; 4 3]
C2=[1 3; 5 6; 3 5 ]
%C1 = [ 2 1; 4 3; 3 5];
%C2 = [ 1 3 ; 5 6;];
Y = transforme(C1, C2)
[Wk, W] = perceptron(Y);
%Ytild = malClasses(Y, W); 






% 
% 
% mu1 = mean(ClasseC1,1);
%  
% matMu1 = repmat(mu1, size(ClasseC1, 1), 1);
% C1C = ClasseC1 - matMu1;
%  
% S = size(C1C, 1) * cov(C1C);
% 
% [v l] = eig(S);
%  
% e1 = v(1,:)
% 
% Proj = e1 * transpose(C1C);


% Affichage
% hold on;
% figure(1);
% scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r');
% 
% scatter3(ClasseC2(:,1),ClasseC2(:,2), ClasseC2(:,3), 'b' );
% hold off;

hold on;
figure(1);
scatter(C1(:,1),C1(:,2),'r');
scatter(C2(:,1),C2(:,2),'b');
x = 0:10;0.1;
Y = -(W(2)/W(3)) * x - W(1)/W(3);
Yk = -(Wk(2)/Wk(3)) * x - Wk(1)/Wk(3);

%coeffDirecteur = (Wk(3)  x;
plot (x, Yk);

plot (x, Y);
hold off;

% hold on;
% figure(2);
% scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r');
% scatter3(ClasseC3(:,1),ClasseC3(:,2), ClasseC3(:,3), 'g');
% hold off;
% hold on;
% figure(3);
% scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r');
% scatter3(ClasseC4(:,1),ClasseC4(:,2), ClasseC4(:,3), 'c');
% hold off;
% 
% hold on;
% 
% figure(4);
% scatter3(ClasseC2(:,1),ClasseC2(:,2), ClasseC2(:,3), 'b');
% scatter3(ClasseC3(:,1),ClasseC3(:,2), ClasseC3(:,3), 'g');
% hold off;
% hold on;
% 
% figure(5);
% scatter3(ClasseC2(:,1),ClasseC2(:,2), ClasseC2(:,3), 'b');
% scatter3(ClasseC4(:,1),ClasseC4(:,2), ClasseC4(:,3), 'c');
% hold off;
% hold on;
% figure(6);
% scatter3(ClasseC3(:,1),ClasseC3(:,2), ClasseC3(:,3), 'g');
% scatter3(ClasseC4(:,1),ClasseC4(:,2), ClasseC4(:,3), 'c');
% hold off;