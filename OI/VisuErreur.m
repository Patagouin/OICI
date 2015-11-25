function [] = VisuErreur( TestClasse,Erreur )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
taille=size(Erreur,2);
cc=hsv(taille);
hold on;
grid on;
xlabel('Red');
ylabel('Green');
zlabel('Blue');
for i=1:taille
    scatter3(TestClasse{i}(Erreur{i},1),TestClasse{i}(Erreur{i},2),TestClasse{i}(Erreur{i},3),'MarkerEdgeColor',cc(i,:));
end
hold off;
end

