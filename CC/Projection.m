load('OICI-DATA-2015');

mu1 = mean(ClasseC1,1);
 
matMu1 = repmat(mu1, size(ClasseC1, 1), 1);
C1C = ClasseC1 - matMu1;
 
S = size(C1C, 1) * cov(C1C);

[v l] = eig(S);
 
e1 = v(1,:)

Proj = e1 * transpose(C1C);

hold on;
figure(1);
scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r');

scatter3(ClasseC2(:,1),ClasseC2(:,2), ClasseC2(:,3), 'b' );
line(Proj(;, 1), Proj(;, 2), Proj(;, 3));
% figure(2);
% scatter3(VerrorBar(:,1),VerrorBar(:,2), VerrorBar(:,3), 'w');
% scatter3(VerrorSaumon(:,1),VerrorSaumon(:,2), VerrorSaumon(:,3), 'r');
hold off;

hold on;
figure(2);
scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r');
scatter3(ClasseC3(:,1),ClasseC3(:,2), ClasseC3(:,3), 'g');
hold off;
hold on;
figure(3);
scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r');
scatter3(ClasseC4(:,1),ClasseC4(:,2), ClasseC4(:,3), 'c');
hold off;

hold on;

figure(4);
scatter3(ClasseC2(:,1),ClasseC2(:,2), ClasseC2(:,3), 'b');
scatter3(ClasseC3(:,1),ClasseC3(:,2), ClasseC3(:,3), 'g');
hold off;
hold on;

figure(5);
scatter3(ClasseC2(:,1),ClasseC2(:,2), ClasseC2(:,3), 'b');
scatter3(ClasseC4(:,1),ClasseC4(:,2), ClasseC4(:,3), 'c');
hold off;
hold on;
figure(6);
scatter3(ClasseC3(:,1),ClasseC3(:,2), ClasseC3(:,3), 'g');
scatter3(ClasseC4(:,1),ClasseC4(:,2), ClasseC4(:,3), 'c');
hold off;
% hold on;
% figure(1);
% scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r');
% scatter3(ClasseC2(:,1),ClasseC2(:,2), ClasseC2(:,3), 'b');
% % figure(2);
% % scatter3(VerrorBar(:,1),VerrorBar(:,2), VerrorBar(:,3), 'w');
% % scatter3(VerrorSaumon(:,1),VerrorSaumon(:,2), VerrorSaumon(:,3), 'r');
% hold off;
% 
% hold on;
% figure(2);
% scatter3(ClasseC1(:,1),ClasseC1(:,2), ClasseC1(:,3), 'r','+');
% scatter3(ClasseC3(:,1),ClasseC3(:,2), ClasseC3(:,3), 'g','+');
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
% figure(7);
% scatter3(VerrorBar(:,1),VerrorBar(:,2), VerrorBar(:,3), 'w');
% scatter3(VerrorSaumon(:,1),VerrorSaumon(:,2), VerrorSaumon(:,3), 'r');
