function ImageConv = MyConv(ImageIn, Mask)
     K=rot90(Mask,2);
     ImageConv = MyCorr(ImageIn,K);     
end  