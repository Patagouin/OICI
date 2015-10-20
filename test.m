    uSaumon = 7;
    sigSaumon = 1;
    uBar = 10;
    sigBar = 5;
    testeur = -10:0.1:25;
    ptSaumon = myGauss(testeur, uSaumon,sigSaumon);
    ptBar = myGauss(testeur, uBar, sigBar);
    
    [ th1, th2] = delimiteur(uBar, uSaumon, sigBar, sigSaumon);
    
    hold on;
    plot(testeur, ptSaumon);
    plot(testeur, ptBar);
    deb1 = [ th1, th1];
    fin1 = [0, 0.4];
    deb2 = [ th2, th2];
    fin2 = [0, 0.4];
    plot(deb1, fin1);
    plot(deb2, fin2);
    hold off;