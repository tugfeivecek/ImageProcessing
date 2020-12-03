clc; clear;
A = imread('cameraman.tif');
B = ordfilt2(A,1,true(5));%min
subplot(1,3,1),imshow(B),title('min');
B1 = ordfilt2(A,13,true(5)); %median
subplot(1,3,2),imshow(B1),title('median');
B2 = ordfilt2(A,25,true(5)); % max
subplot(1,3,3),imshow(B2),title('max');

B3=ordfilt2(A,1,[0 1 0; 1 0 1; 0 1 0]);
figure,imshow(B3),title('Minimum of north, east, south, and west neighbors');

%%imfilter 
A = ones(256,256);
A(128:256,1:128)=0;
imshow(A)
A(1:128,128:256)=0;
imshow(A)
w=ones(31)';
im=imfilter(A,w,'conv','replicate')







