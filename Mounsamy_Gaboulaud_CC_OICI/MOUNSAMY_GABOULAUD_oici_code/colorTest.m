function [ color ] = colorTest( nameClass )

if(strcmp(nameClass,'C1')==1)
    color = 'r';    
elseif(strcmp(nameClass,'C2')==1)
        color = 'b';
elseif(strcmp(nameClass,'C3')==1)
        color = 'c';
elseif(strcmp(nameClass,'C4')==1)
        color = 'm';
else
    color = 'b';

end

