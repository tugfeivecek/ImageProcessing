clc;  clear;  close all;

%%
% f=zeros (30,30);
% f(5:24, 13:17)=1;
% figure,imshow(f)
% 
% F=fft2(f)
% figure,imshow(F)
% F2=abs(F)
% 
% F22=abs(f)

% Low pass ortayı beyazlasıo high pass orta siyahlasıyo

% a=imread('cameraman.tif')
% a=double(a)
% af=ftt2(a);
%  figure,imshow(log(af),[]);
%  aft=fftshift(af);
% band reject filter

f=imread('cemaraman.tif');

H=zeros( r , c);
x1= r/4 ; y1= c/4;
x2= r/4 ; y2= 3*c/4;
x3= 3*r/4 ; y3=c/4;
x4= 3*r/4; y4= 3*c/4;
% H(x1,y1) =1; H(x2,y2) = 1; H(x3,y3)=1; H(x4,y4)=1;
% 
% imshow(H)
D1=10;
D2=20;
D3=30;
D4=40;




