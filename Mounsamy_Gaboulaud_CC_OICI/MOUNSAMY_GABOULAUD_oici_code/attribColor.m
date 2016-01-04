function [ colorClass ] = attribColor( nameClass )

if(strcmp(nameClass,'C1')==1)
    colorClass = 'r';    
elseif(strcmp(nameClass,'C2')==1)
        colorClass = 'b';
elseif(strcmp(nameClass,'C3')==1)
        colorClass = 'c';
elseif(strcmp(nameClass,'C4')==1)
        colorClass = 'm';
else
    colorClass = 'b';


end

