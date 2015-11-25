%MOINDRECARRE Summary of this function goes here
%   Detailed explanation goes here
function [polmc] =mcarre(mp,degre)
  taillemp=size(mp) % matrice (5,2)
  mc=ones(degre+1,degre+1) %créer une matrice remplie de 1 de taille degre+1, degre+1
  b=ones(degre+1,1) %matrice vecteur remplie de 1
  mc(1,1)=taillemp(1,1)  
  %calcul premier ligne de mc
  for col=2: degre+1
    s=0
    for i=1: taillemp(1,1)
      s=s+mp(i,1)^(col-1)
    end
    mc(1,col)=s
  end
  %calcul derniere colonne de mc
  for ligne=2: degre+1
    s=0
    for i=1: taillemp(1,1)
      s=s+mp(i,1)^(degre+ligne-1)
    end
    mc(ligne,degre+1)=s
  end
  %propagation en bas a gauche
  for ligne=2: degre+1
    for col=1: degre
      mc(ligne,col)=mc(ligne-1,col+1)
    end
  end  
  %calcul de B
  for ligne=1: degre+1
    s=0
    for i=1: taillemp(1,1)
      s=s+mp(i,2)*mp(i,1)^(ligne-1)
    end
    b(ligne,1)=s
  end
  %resolution
  X=linsolve(mc,-b)
  %calcul d'erreur
  x=poly(0,'x')
  polmc=0
  for k=1: degre+1
    polmc=polmc+X(k,1)*x^(k-1)
  end
  erreur=0
  for i=1: taillemp(1,1)
    erreur=erreur+(mp(i,2)-horner(polmc,mp(i,1)))^2
  end 
  
    
end




