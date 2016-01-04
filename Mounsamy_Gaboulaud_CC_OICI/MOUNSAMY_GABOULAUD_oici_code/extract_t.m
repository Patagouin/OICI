function [ t_C1, t_C2 ] = extract_t( C1,C2,sizeT )

sizeVT = min(length(C1),length(C2));

t_C1IndiceTmp = randperm(sizeVT);
t_C1Indice    = t_C1IndiceTmp(1:sizeT);
t_C1          = C1(t_C1Indice,:);

t_C2IndiceTmp = randperm(sizeVT);
t_C2Indice    = t_C2IndiceTmp(1:sizeT);
t_C2          = C2(t_C2Indice,:);



end

