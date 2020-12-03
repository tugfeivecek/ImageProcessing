%%
clc; clear;  close all;

%% read image 
f=imread('cameraman.tif');
% h_avg=fspecial('gaussian',11);
% laplacian slopeların nasıl değiştiğini gösteriyo
h_lap=fspecial('laplacian'); % high pass filter

% figure; imagesc(h_avg);  % renklendiriyo
f_filtered=imfilter(f,h_lap);
f_filtered2=imfilter(f,h_lap,'replicate');  % replicate cok bir sey farkettirmiyo yazmasakta olur
 
%figure; sublpot(1, 3 ,1 ); imshow(f,[]);
        sublpot(1, 3 ,2 ); imshow(f_filtered,[]);
        sublpot(1, 3 ,3 ); imshow(f_filtered2,[]);
%%   filtrelenmemin 2 yolu conv yada imfilter kullanarak
clc; clear;  close all;
        f=imread('moon.tif');
        h1=ones(3, 3)/9;
        h2=fspecial('average',3);
        f1=conv2(f,h1);
        f1=f1(2: end-1, 2:end-1);
        f2=imfilter(f,h2); 
        
        %figure; imshow(f1,[]);
        %figure; imshow(f2,[]);

%%
clc; clear all;  close all;
f=imread('moon.tif');
h1=fspecial('gaussian', 3, 0.1); % standart sapmayı arttırmak bloringi arttırıyo gaussianda
f1=imfilter(f,h1);
%figure;imshow(f1,[]);

h2=fspecial('gaussian', 15, 0.5); % standart sapmayı arttırmak bloringi arttırıyo gaussianda
f2=imfilter(f,h2);
%figure;imshow(f2,[]);

h3=fspecial('gaussian', 49, 0.7); % standart sapmayı arttırmak bloringi arttırıyo gaussianda
f3=imfilter(f,h3);
%figure;imshow(f3,[]);

%% gaussian yerine average yaparsak dahada bulanık olur 

clc; clear; close all;
f=imread('camerama.tif');
h1=fspecial('disk',25);
%imagesc ayırıyo kullan 
imagesc(h1);

%% edge detection

clc; clear; close all;
f=imread('camerama.tif');
imshow(f);
f_log=edge(f,'log');
f_canny=edge(f,'canny');
f_roberts=edge(f,'roberts');
f_prewitt=edge(f,'prewitt');
f_sobel=edge(f,'sobel');

h3= [ 1 2 1 ; 2 - 12 2; 1 2 1 ];
f_lap=ifilter(f,h3);

figure; sublpot(3, 3 ,1 ); imshow(f,[]);
        sublpot(3, 3 ,2 ); imshow(f_log,[]);
        sublpot(3, 3 ,3 ); imshow(f_canny,[]);
        sublpot(3, 3 ,4 ); imshow(f_roberts,[]);
        sublpot(3, 3 ,5 ); imshow(f_prewitt,[]);
        sublpot(3, 3 ,6 ); imshow(f_sobel,[]);
        sublpot(3, 3 ,7 ); imshow(f_lap,[]);
           
































