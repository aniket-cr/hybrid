function HybridImage = MyHybrid(Image1, Image2, CutOff1, CutOff2)
    O=MyGauss(CutOff1,[30 30]);
    F1=MyConv(double(Image2),O);
    B=MyGauss(CutOff2,[30 30]);
    F=MyConv(double(Image1),B);
    G=double(Image1)-F;
    HybridImage=(F1+G)/2;
  
end

