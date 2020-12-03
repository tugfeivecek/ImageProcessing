%% 
clc; clear;
%% load image
I=imread('cameraman.tif'); 
D=im2double(I);    % doublea cevırıyoruz her seyı 255e bol normalıze et

%% Add noise to D
D_N=imnoise(D,'gaussian');
imshowpair(D,D_N,'montage')
ssim(D,D_N)%0 ile bır arasında deger 1 se birbirine yakın 0 sa bırbırınden uzak
psnr(D,D_N) % iki resmin birbirne ne kadar matrik oldugunu gosterir 
D_S=D_N; %% Bastaki deneyı korumak ıcın
for i = 1 : 100
    D_S= D_S + imnoise(D,'speckle')
end
    D_S=D_S/101;
    ssim(D,D_S)
    psnr(D,D_S)
    imshowpair(D_N,D_S,'montage')
    % iki resmin psnrı ne kadar yuksekse o kdar bırbırıne yakın
    % gausian goruntu aldık doublad cevırıp normalize ettık gausian gurultu ekledık 
    % gauisandan farklı olmak uzere speckle noiseıyla uzerıne gurultu ekledık ortalaması aldık


