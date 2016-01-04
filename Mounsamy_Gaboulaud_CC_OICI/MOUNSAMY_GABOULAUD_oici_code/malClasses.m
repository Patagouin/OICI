function [ Ytild ] = malClasses( Y, w )

diff = w * transpose(Y);
Indices = find(diff < 0);

Ytild = Y(Indices(:), :); 

end

