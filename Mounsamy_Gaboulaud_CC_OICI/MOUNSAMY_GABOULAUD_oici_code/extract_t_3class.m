function [ t_C1, t_C2 ,t_C3] = extract_t_3class( C1,C2,C3, sizeT )

sizeVTtmp = min(length(C1),length(C2));
sizeVT = min(sizeVTtmp,length(C3));

t_C1IndiceTmp = randperm(sizeVT);
t_C1Indice    = t_C1IndiceTmp(1:sizeT);
t_C1          = C1(t_C1Indice,:);

t_C2IndiceTmp = randperm(sizeVT);
t_C2Indice    = t_C2IndiceTmp(1:sizeT);
t_C2          = C2(t_C2Indice,:);

t_C3IndiceTmp = randperm(sizeVT);
t_C3Indice    = t_C3IndiceTmp(1:sizeT);
t_C3          = C3(t_C3Indice,:);


end
