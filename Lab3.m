%I = imread('rice.png');
%J= imread('cameraman.tif');
%Ip = imdivide(I,J);
%imshow(Ip,[]);
k = imread('cameraman.tif');
l=imread('eight.tif');
k1 = padarray(k,[0 52],'pre');
l1= padarray(l,[14 0],'post');
m=k1+l1;
figure,subplot(2,2,1),imshow(k);subplot(2,2,2),imshow(l),
subplot(2,2,3),imshow(k1),subplot(2,2,4),imshow(l1);
figure,imshow(m);
