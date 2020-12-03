
%%
clc; clear;
f = imread('cameraman.tif');
[M, N] = size(f);
M = size(f, 1);
N = size(f, 2);
whos f

%%displaying image
figure,imshow(f)
a=imread('pout.tif');
figure, imshow(a);
figure, imshow(a,[]); %en dusuk degerı mın daha gorunur hale getırıyo 
figure, imshow(a,[80,120]); % 80 altındakı deger 0 80 ustundekılerı 255 e cektı
%%YAN YANA GOSTERME
f = imread('cameraman.tif');
g=imread('pout.tif');
imshow(f),figure, imshow(g);
figure,subplot(1,2,1),imshow(f),title('cameraman'),subplot(1,2,2),imshow(g),title('pout');
figure,subplot(2,1,1),imshow(f),title('cameraman'),subplot(2,1,2),imshow(g),title('pout');%% alt alta okuyu 
imshowpair(f,g, 'montage')
%% imtoll(BW) uzerıne gelınce pixel pixel gosterıyo
%%image class
BW = imread('blobs.png'); %% binary image
imshow(BW);
bwImg = imread('circles.png');
imshow(bwImg) ;
title('İkilik resim')
%%convert 
f=[-0.5 0.5; 0.75 1.5] %double
g = im2uint8(f);
h = uint8([25 50; 128 200]);%uint8
g1 = im2double(h);
%% converting between class
f = [1 2; 3 4]
g = mat2gray(f) %% 1 2 3 4 degerlerını 0 la 1 aralıgına atıcak en buyuk degerı 1 yapıyo
gb = im2bw(g, 0.6) %% herhangı bır threshold degerı belırlı 0,6 0,6 ya esıt ve buyuklerı 1 kalanları 0 yapıyo
img = imread('coins.png');
imshow(img);
class(img);
img(51:60,28:33) % belirli aralıgı gostermek ıcın
img = im2double(img);
class(img)
img(51:img(51:60,28:33));

%%
v=[ 1 3 5 6 9]
v(3:end)
v(1:2:end) % 2 şer arttırarak sonuncu elemana gel
v(end:-2:1) % 2 şer azaltarak sonuncu elemana gel

%% 
A = [1 2 3; 4 5 6; 7 8 9]
A(2, 3)
T2 = A([1 2], [1 2 3])
T2 = A(1:2, 1:3)
E = A([1 3], [3 2]) % 1.ve 3.satır, 3. ve 2 .sutun
C3 = A(:, 3) % tum satır 3 sutun
B = A;
B(:, 3) = 0 %3.sutununa sıfır ekler
A(end, end)
A(end, end - 2)
A(2:end, end:1)

v = T2(:) 
col_sum=sum(A) % tum sutunları topluyo
total_sum=sum(A(:)) % tum matrisleri toplama
%%Some simple image operating using array indexing 
f = imread('cameraman.tif');
figure,imshow(f,[]);

%% TERS Cevırme
%180 derece
fp=f(end: -1:1, :); % satır degerlerını sondan basla -1 alarka ilk degre kadar gıt sutun aynı kalsın ters cevrılıyo saga dondurme
figure,imshow(fp)

f=imread('cameraman.tif');
figure,imshow(f)
fp=f(:, end: -1:1) % soldan saga cevırdık ayne gıbı
figure, imshow(fp)
f=imread('cameraman.tif');

fc = f(50:150, 50:150); %% goruntunun belırlı yerlerını kesıp oraları alma kırpma
figure,imshow(fc)

f=imread('cameraman.tif');
figure,imshow(f)
%% 256 256 lık goruntuyu kuculterek 128 lige dusuruyo
fs = f(1:2:end, 1:2:end); 
figure,imshow(fs)









