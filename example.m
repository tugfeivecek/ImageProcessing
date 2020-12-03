clc; clear;
A = imread('cameraman.tif');
figure,imshow(A)
B=imnoise(A,'salt & pepper',0.08);
figure,imshow(B)
B1=medfilt2(B,[3 3]);
figure,imshowpair(A,B,'montage');
%%
m=[ 3 56 657; 353 234 345; 34 23 45];
medfilt2(m,[3,3])
%% B=ordfilt2(A,5,ones(3,3)) 
