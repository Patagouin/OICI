function [resC1C2, resC1C3, resC2C3, error2D, error1D, proj2D, proj1D] = classification_ACP_CC( trainC1, trainC2, trainC3, testC1, testC2, testC3 )

%new train
[ C1C2_C1_proj2,C1C2_C1_proj1,C1C2_C2_proj2,C1C2_C2_proj1 ] = ACP( trainC1, trainC2 );
[ C1C3_C1_proj2,C1C3_C1_proj1,C1C3_C3_proj2,C1C3_C3_proj1 ] = ACP( trainC1, trainC3 );
[ C2C3_C2_proj2,C2C3_C2_proj1,C2C3_C3_proj2,C2C3_C3_proj1 ] = ACP( trainC2, trainC3 );

%new test
[ C1C2_C1_test2,C1C2_C1_test1,C1C2_C2_test2,C1C2_C2_test1 ] = ACP( testC1, testC2 );
[ C1C3_C1_test2,C1C3_C1_test1,C1C3_C3_test2,C1C3_C3_test1 ] = ACP( testC1, testC3 );
[ C2C3_C2_test2,C2C3_C2_test1,C2C3_C3_test2,C2C3_C3_test1 ] = ACP( testC2, testC3 );


%2D
[ resC1C2_C1_2D, resC1C2_C2_2D, errorC1C2_2D ] = classifieurMV_CC( C1C2_C1_proj2, C1C2_C2_proj2, C1C2_C1_test2, C1C2_C2_test2 );
[ resC1C3_C1_2D, resC1C3_C3_2D, errorC1C3_2D ] = classifieurMV_CC( C1C3_C1_proj2, C1C3_C3_proj2, C1C3_C1_test2, C1C3_C3_test2 );
[ resC2C3_C2_2D, resC2C3_C3_2D, errorC2C3_2D ] = classifieurMV_CC( C2C3_C2_proj2, C2C3_C3_proj2, C2C3_C2_test2, C2C3_C3_test2 );

error2D = [errorC1C2_2D, errorC1C3_2D, errorC2C3_2D ];

%1D
[ resC1C2_C1_1D, resC1C2_C2_1D, errorC1C2_1D ] = classifieurMV_CC( C1C2_C1_proj1, C1C2_C2_proj1, C1C2_C1_test1, C1C2_C2_test1 );
[ resC1C3_C1_1D, resC1C3_C3_1D, errorC1C3_1D ] = classifieurMV_CC( C1C3_C1_proj1, C1C3_C3_proj1, C1C3_C1_test1, C1C3_C3_test1 );
[ resC2C3_C2_1D, resC2C3_C3_1D, errorC2C3_1D ] = classifieurMV_CC( C2C3_C2_proj1, C2C3_C3_proj1, C2C3_C2_test1, C2C3_C3_test1 );

error1D = [errorC1C2_1D, errorC1C3_1D, errorC2C3_1D ];

resC1C2 = [resC1C2_C1_2D, resC1C2_C2_2D];
resC1C3 = [resC1C3_C1_2D, resC1C3_C3_2D];
resC2C3 = [resC2C3_C2_2D, resC2C3_C3_2D];


proj2D{1} = C1C2_C1_proj2;
proj2D{2} = C1C2_C2_proj2;
proj2D{3} = C1C3_C1_proj2;
proj2D{4} = C1C3_C3_proj2;
proj2D{5} = C2C3_C2_proj2;
proj2D{6} = C2C3_C3_proj2;

proj1D{1} = C1C2_C1_proj1;
proj1D{2} = C1C2_C2_proj1;
proj1D{3} = C1C3_C1_proj1;
proj1D{4} = C1C3_C3_proj1;
proj1D{5} = C2C3_C2_proj1;
proj1D{6} = C2C3_C3_proj1;

end

