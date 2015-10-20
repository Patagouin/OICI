function [th1,th2] = computeThresoldML(mu1,sigma1,mu2,sigma2 )
if(sigma1==sigma2)
    th1 = (mu1*mu1) - (mu2*mu2);
    th1 = th1 / (mu1 - mu2);
    th1 = th1/2;
    th2 = th1;
else
    cte = -2*log(sigma1/sigma2);
 
    a = (1/(sigma1*sigma1))- (1/(sigma2*sigma2));
    b = 2* ((mu2/(sigma2*sigma2)) - (mu1/(sigma1*sigma1)));
    c = ((mu1*mu1)/(sigma1*sigma1))- ((mu2*mu2)/(sigma2*sigma2)) - cte;
    if (a==0)
        th1 = b + (cte -c);
        th2 = th1;
    else
        delta = sqrt((b*b) - 4*(a*c));
        rac1    = (-b - delta)/(2*a);
        rac2    = (-b + delta)/(2*a);
        if (rac1 < rac2)
            th1 = rac1;
            th2 = rac2;
        else
            th1 = rac2;
            th2 = rac1;
        end
    end
end

end

