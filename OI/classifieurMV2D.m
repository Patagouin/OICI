function [res,Ptsaumon,Ptbar] = classifieurMV2D( Test,Nbar,Nsaumon,sigbar,sigsaumon )
Ptsaumon=mvnpdf(Test,Nsaumon,sigsaumon);
Ptbar=mvnpdf(Test,Nbar,sigbar);
sizeT=size(Test);
res=ones(sizeT(1),1);
res=res+(Ptsaumon>=Ptbar);


end



