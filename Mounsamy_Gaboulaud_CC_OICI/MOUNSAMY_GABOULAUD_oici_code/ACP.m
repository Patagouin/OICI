function [ C1_proj2,C1_proj1,C2_proj2,C2_proj1 ] = ACP( trainC1, trainC2 )

C1_P=trainC1;
 
 C1_mu = mean(C1_P);
 C1_C = C1_P - repmat(C1_mu,size(C1_P,1),1);
 C1_S = (size(C1_C,1)-1)*cov(C1_C);
 
 [C1_e,C1_lambda]=eigs(C1_S);
 
 C1_W2 = transpose([C1_e(:,2),C1_e(:,3)]);
 C1_proj2 = transpose(C1_W2*C1_C');
 
 C1_W1 = transpose(C1_e(:,3));
 C1_proj1 = transpose(C1_W1*C1_C');
 
 %%%%%%%%%%%%%%%%%%%%%%%%%
 
 C2_P=trainC2;
 
 C2_mu = mean(C2_P);
 C2_C = C2_P - repmat(C2_mu,size(C2_P,1),1);
 C2_S = (size(C2_C,1)-1)*cov(C2_C);
 
 [C2_e,C2_lambda]=eigs(C2_S);
 
 C2_W2 = transpose([C2_e(:,2),C2_e(:,3)]);
 C2_proj2 = transpose(C2_W2*C2_C');
 
 C2_W1 = transpose(C2_e(:,3));
 C2_proj1 = transpose(C2_W1*C2_C');


end

