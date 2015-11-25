function [res] = classifieurMV( Test,Nbar,Nsaumon,sigbar,sigsaumon )
Ptsaumon=mygauss(Test,Nsaumon,sigsaumon);
Ptbar=mygauss(Test,Nbar,sigbar);
res=ones(size(Test));
res=res+(Ptsaumon>=Ptbar)


end

