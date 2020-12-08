%%
clc;  clear;  close all;

%% create image
f = zeros(256, 256);
f(118:138, 108:148) = 1;
% figure;  imshow(f, []);

%% Fourier transform
F = fft2(f);  % fast fourier transform 2D
F = fftshift( F ); % shifting low frequency terms to the origin
Fabs = abs( F ); % power spectrum
% figure;   imshow(Fabs, []);

%% Fourier transform of cameraman.tif
f1 = imread('cameraman.tif');
F1 = fft2( f1 );
F1 = fftshift( F1 );
F1abs = abs( F1 );

c = 1;
F1abslog = c * log( 1 + F1abs );

figure;  subplot(1, 3, 1);  imshow(f1,[]);  title('Original');
         subplot(1, 3, 2);  imshow(F1abs,[]);  title('Power spectrum'); 
         subplot(1, 3, 3);  imshow(F1abslog,[]);  title('log transform of Power spectrum'); 

%% Inverse Fourier transform of cameraman.tif
C = ifftshift( F1 );  % frequency domain
c = real( ifft2( C ) ); % spatial domain
figure;  imshow(c, []);
