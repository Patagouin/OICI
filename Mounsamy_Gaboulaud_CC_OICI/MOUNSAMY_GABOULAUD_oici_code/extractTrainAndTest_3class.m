function [ trainC1,trainC2,trainC3,testC1,testC2,testC3 ] = extractTrainAndTest_3class( C1,C2,C3,sizeTrain,sizeTest )

    [trainC1,trainC2,trainC3]=extract_t_3class(C1,C2,C3,sizeTrain);
    [testC1,testC2,testC3]=extract_t_3class(C1,C2,C3,sizeTest);


end