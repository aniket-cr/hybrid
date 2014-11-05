function ImageCorr = MyCorr(ImageIn, Mask)

     [m,n,lo]=size(ImageIn);
    
     [p,q]=size(Mask);
     K=Mask;
     
     cx=ceil((q+1)/2);
     cy=ceil((p+1)/2);
     cl=cx-1;
     cr=q-cx;
     ct=cy-1;
     cb=p-cy;
     pad=zeros(m+ct+cb,n+cl+cr,lo);
     for i=1:m+ct+cb
         for j=1:n+cr+cl
             if (rem(p,2)==0)
                 if (i>ct && j>cl && i<=m+cb+1 && j<=n+cr+1)
                    pad(i,j,:)=ImageIn(i-ct,j-cl,:);
                 end
             else
                 if (i>ct && j>cl && i<=m+cb && j<=n+cr)
                    pad(i,j,:)=ImageIn(i-ct,j-cl,:);
                 end
             end
         end
        
                 
     end
     
     
     ImageCorr = zeros(m,n,lo);
     for i=1:m
         for j=1:n
%              for r=1:p
%                  for s=1:q
%                     ImageCorr(i,j,:) = ImageCorr(i,j,:) + (pad(r + i-1, s + j-1,:) * K(r,s));
%                  end
%              end
                
               ImageCorr(i,j,1) = ImageCorr(i,j,1) + sum(sum((pad(i:i+p-1,j:j+q-1,1) .* K))); 
               ImageCorr(i,j,2) = ImageCorr(i,j,2) + sum(sum((pad(i:i+p-1,j:j+q-1,2) .* K))); 
               ImageCorr(i,j,3) = ImageCorr(i,j,3) + sum(sum((pad(i:i+p-1,j:j+q-1,3) .* K))); 
         end
     end
     

end  