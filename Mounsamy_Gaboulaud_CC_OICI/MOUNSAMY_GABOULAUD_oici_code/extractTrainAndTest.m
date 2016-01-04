function [ trainC1,trainC2,testC1,testC2 ] = extractTrainAndTest( C1,C2,sizeTrain,sizeTest )

    [trainC1,trainC2]=extract_t(C1,C2,sizeTrain);
    [testC1,testC2]=extract_t(C1,C2,sizeTest);


end

