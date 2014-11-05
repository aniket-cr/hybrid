clc
clear all
% -------------- Loading aligned images from Samples folder----------------%

% Image1=imread('Samples/plane.bmp');
% Image2=imread('Samples/bird.bmp');

Image1=imread('Samples/cat.bmp');
Image2=imread('Samples/dog.bmp');

% Image1=imread('Samples/einstein.bmp');
% Image2=imread('Samples/marilyn.bmp');
 
% Image1=imread('Samples/fish.bmp');
% Image2=imread('Samples/submarine.bmp');
 
% Image1=imread('Samples/bicycle.bmp');
% Image2=imread('Samples/motorcycle.bmp');

% Image1=imread('Samples/zebra.jpg');
% Image2=imread('Samples/horse.png');

% Image1=imread('Samples/celeb1.jpg');
% Image2=imread('Samples/celeb2.jpg');





% ------------ Implementation of MyCorr.m using MyGauss---------------%

% disp('Implementing MyCorr.m.....')
% gauss=MyGauss(10,[5 5]);                    % Takes in sigma,size of filter
% ImageCorr1=MyCorr(double(Image1),gauss);
% figure
% subplot(1,2,1)
% imshow(uint8(Image1))                       % Original Image
% hold on;
% subplot(1,2,2)
% imshow(uint8(ImageCorr1))                   % Correlated Image
% suptitle('Implementation of MyCorr.m using MyGauss')
% hold off;



% ------------ Implementation of MyConv.m using MyGauss---------------%

% disp('Implementing MyConv.m.....')
% gauss=MyGauss(10,[5 5]);                    % Takes in sigma,size of filter
% ImageConv2=MyConv(double(Image2),gauss);
% figure
% subplot(1,2,1)
% imshow(uint8(Image2))                       % Original Image
% hold on;
% subplot(1,2,2)
% imshow(uint8(ImageConv2))                   % Convolved Image
% suptitle('Implementation of MyConv.m using MyGauss')
% hold off;



% ----------------- Implementation of MyGauss.m ----------------------%

% disp('Implementing MyGauss.m.....')
% disp('Gaussian Mask of size 5X5 produced : ')
% GaussMask=MyGauss(5, [5 5])                 % Takes in sigma,size of filter



% -------------- Implementation of MyGaussPyramid.m ------------------%

% disp('Implementing MyGaussPyramid.m.....')
% MyGaussPyramid(Image1)



% ----------------- Implementation of MyHybrid.m ----------------------%

disp('Implementing MyHybrid.m.....')
HybridImage=MyHybrid(Image1, Image2, 25, 25);
MyGaussPyramid(HybridImage)
disp('Done!')