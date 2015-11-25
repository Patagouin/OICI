function [] = VisuNBErreur( NB_ErreurTot3D )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
taille=size(NB_ErreurTot3D,1);
cc=hsv(taille);
hold on;
grid on;
xlabel('iteration');
ylabel('pourcentage d erreur');
for i=1:taille
    plot(NB_ErreurTot3D(i,:),'color',cc(i,:));
end
hold off;
end

