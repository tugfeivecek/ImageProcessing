%%NN interpolation
clear all;
clc;
close all;
I=imread('mri.tif');
%figure,imshow(I,[]);
%I=imread('mri.tif');
figure,imshow(I,[]);
[X Y]=size(I);
%% Reshape Matrix
k=1;                                      
for i=1:1:X
    for j=1:1:Y
        for(1,k)=j;
        k=k+1;
    end
end 
%% Interpolation
I=imread('cameraman.tif');
figure,imshow(I);
In=imresize(I,2,'nearest'); % Goruntuyu 2 katına cıkarmak.
figure,imshow(In);
Ib=imresize(I,2,'bilinear');
figure,imshow(Ib);
Ic=imresize(I,2,'cubic');
figure,imshow(Ic);


%% Arithmetic Operators
x=imread('cameraman.tif');
x1=x(:,end:-1:1);
a=x+x1;
subplot(1,3,1),imshow(x), subplot(1,3,2),imshow(x1), subplot(1,3,3),imshow(a) 

x(217,7);
x1(217,7);% sonucalrı gosterme
a(217,7);
x(1,1); 
x1(1,1);
a(1,1);

%% iki resmi ust uste koyma
I=imread('rice.png');
J=imread('cameraman.tif');
K=I+J;
imshow(K);
%%
I = imread('rice.png');
J = imread('cameraman.tif');
K = imadd(I,J);
K1 =imadd(I,J,'uint16'); % topladıgım degerle 2^5 cıkıyosa gosterıyo
figure, imshow(K,[]);
figure, imshow(K1,[]);

%% adding constant value
I = imread('rice.png');
J = imadd(I,50);
subplot(1,2,1), imshow(I) 
subplot(1,2,2), imshow(J)

%% pixel subtraction bırbırınden cıkarma goruntu sıyah oluyo

x=imread('cameraman.tif');
x1=x(:,end:-1:1);
b=x-x1;
subplot(1,3,1),imshow(x), subplot(1,3,2),imshow(x1), subplot(1,3,3),imshow(b) 
x(58,153);
x1(58,153); 
b(58,153);
x(1,1); 
x1(1,1); 
b(1,1)

%% sabit sayı cıkarma

x2=b-23;
subplot(2,2,1),imshow(x), subplot(2,2,2),imshow(x1), subplot(2,2,3),imshow(b) ; subplot(2,2,4),imshow(x2); 

%
s=toplam(10,20);
%% goruntuyu topla ters cevir topla quız sorusu

x=imread("cameraman.tif");
x1=x(:,end:-1:1);
A=x+x1;
subplot(1,3,1),imshow(x), subplot(1,3,2),imshow(x1), subplot(1,3,3),imshow(a) 
%% ay bembeyaz

I1= imread('moon.tif');
J1= immultiply(I1,I1);
imshow(I1), figure, imshow(J1)
