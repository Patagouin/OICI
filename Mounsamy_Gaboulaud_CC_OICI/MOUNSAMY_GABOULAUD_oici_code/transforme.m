function [ Y ] = transforme(C1, C2)

vec1 = ones(size(C1, 1),1); %vec1 = matrice colonne
vec2 = ones(size(C2, 1),1); 
CP1=[vec1 C1]; % = 4 colonnes avec les 1 devant
CP2 = [vec2 C2];

CS1 = CP1;
CS2 = -1.*CP2; 
Y = [CS1; CS2]; % Rajout en fin de colonne
end