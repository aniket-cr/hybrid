function GaussMask = MyGauss(Sigma, Size)
    center1=ceil(Size(1,1)/2);
    center2=ceil(Size(1,2)/2);
    GaussMask=zeros(Size(1,1),Size(1,2)); 
    for i=1:Size(1,1)
        for j=1:Size(1,2)
            GaussMask(i,j)=(exp((-1)*(((i-center1)*(i-center1))+((j-center2)*(j-center2)))/(2*(Sigma*Sigma)))/(2*pi*(Sigma*Sigma)));        
        end
    end
    GaussMask=GaussMask/sum(sum(GaussMask));
end
