function [ error ] = classification_Perceptron( testC1,testC2,testC3 )

 Y_C1C2=transforme(testC1,testC2);
 [MC_C1C2, Wk_C1C2, W_C1C2 ] = perceptron(Y_C1C2);
 
 nbMC_C1C2 =size(MC_C1C2,1);
 MC_C1C2 =  ( nbMC_C1C2 / ( size(testC1,1) + size(testC2,1) ) ) * 100;
 
 
  Y_C1C3=transforme(testC1,testC3);
 [MC_C1C3, Wk_C1C3, W_C1C3 ] = perceptron(Y_C1C3);
 
 nbMC_C1C3 =size(MC_C1C3,1);
 MC_C1C3 = ( (nbMC_C1C3 / ( size(testC1,1) + size(testC3,1)) ) * 100);
 
   Y_C2C3=transforme(testC2,testC3);
 [MC_C2C3, Wk_C2C3, W_C2C3 ] = perceptron(Y_C2C3);
 
 nbMC_C2C3 =size(MC_C2C3,1);
 MC_C2C3 = ( (nbMC_C2C3 / ( size(testC2,1) + size(testC3,1)) ) * 100);
 
 error = [MC_C1C2, MC_C1C3, MC_C2C3];

end

