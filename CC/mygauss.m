function [y] = mygauss( x,moy,sigma )
y=(1/(sqrt(2*pi)*sigma))*exp(-(1/2)*((x-moy)/sigma).^2)

end

