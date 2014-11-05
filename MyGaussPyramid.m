function MyGaussPyramid(ImageIn)
    
    [p,q,r]=size(ImageIn);
    count=1;
    sum=0;
    l=p;
    m=q;
    while(l>1 && m>1)
        l=ceil(l/2);
        m=ceil(m/2);
        
        sum=sum+power(2,count);
        count=count+1;
    end
    count=count-1;
    figure
    subplot(1,sum,[1,power(2,count)])
    imshow(uint8(ImageIn))
    hold on;
    count=count-1;
    
    while(p>1 && q>1)
        ImageOut=gp(ImageIn);
        subplot(1,sum,[power(2,count+1)+1,power(2,count+1)+1+power(2,count)-1])
        imshow(uint8(ImageOut))
        hold on;
        ImageIn=zeros(size(ImageOut));
        count=count-1;
        ImageIn=ImageOut;
        ImageOut=zeros(ceil((size(ImageIn,1))/2),ceil((size(ImageIn,2))/2),3);
        [p,q,r]=size(ImageIn);
        
    end
   
    hold off;

    



    
end

function pyramid = gp(ImageIn)
    B=MyGauss(1,[5 5]);
    F=MyConv(ImageIn,B);

    

    [m,n,l]=size(F);
    s1=ceil(m/2);
    s2=ceil(n/2);

    for i=1:s1
            p(i,:,:)=F(2*i-1,:,:);
    end
    for i=1:s2
            pyramid(:,i,:)=p(:,2*i-1,:);
    end
end