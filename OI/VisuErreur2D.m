function [] = VisuErreur2D( TestClasse,Erreur,dimension1,dimension2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
taille=size(Erreur,2);
cc=hsv(taille);

for i=1:taille
    TestClasseRedim{i}=[TestClasse{i}(:,dimension1) TestClasse{i}(:,dimension2)];
end


hold on;
grid on;
xlabel('Red');
ylabel('Green');
zlabel('Blue');
for i=1:taille
    scatter(TestClasseRedim{i}(Erreur{i},1),TestClasseRedim{i}(Erreur{i},2),'MarkerEdgeColor',cc(i,:));
end
hold off;
end
