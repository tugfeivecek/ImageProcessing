%% ideal high pass filter
%f=imread('cameraman.tif');
%[r,c]=size(f);

% mask=zeros(r,c)
% sigma=125;
% xc=floor(r/2); yc=floor(c/2)

% F=fft2(f);
% Fc= fftshift(F);
% % mask = 1 - mask;
% imshow( mask, [] );

%% Butterworth Low Pass Filter

D0=50; %kesim frekansı
n=0.3;
mask=zeros(r,c);
xc=floor(r/2); yc=floor(c/2);
for i=1:r
    for j=1:c
        mask(i,j)=1 / ( 1 + (D0 / sqrt (i - xc)^2 +(j - yc)^2)) ^ (2*n) );
    end 
end
figure; imshow(mask[]);