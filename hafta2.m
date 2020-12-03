I1=imread('cameraman.tif');
I2=imread('rice.png');
imshowpair(I1,I2, 'montage') %% Montage iki resmi yan yana getirme

%% imadd toplamak imsubtract çıkarıyor immultiply bölmek 
%%İKİ RESMİ TOPLAMA
I_add = imadd(I1,I2);  %%iki resmi toplama
figure; imshow(I_add); %% iki resmin üst üste gelmesi
I1(1:5, 1:5)
%%İKİ RESMİ CIKARMA
I_sub =imsubtract(I1,I2); %% iki resmi cıkarmak birbirinden daha karanlık bır goruntu
figure; imshow(I_sub);
IC=imcomplement(I1); %% değilini almak
I1(1:5 ,1:5)
imshowpair(I1,IC,'montage')
A = [1 9 -2; 8 4 -5] 
[M,I] = max(A) %M max I indisi her bir sutunda


     
