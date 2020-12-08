%%
clc;  clear;  close all;

%% read image
f = imread('moon.tif');
h1_lap = fspecial( 'laplacian' );
h2_lap = fspecial( 'laplacian', 0.7 );

% figure;  imagesc( h_avg );

f_filtered1 = imfilter( f, h1_lap );
f_filtered2 = imfilter( f, h2_lap );

figure;  subplot(1, 3, 1);  imshow(f, []);
         subplot(1, 3, 2);  imshow(f_filtered1, []);
         subplot(1, 3, 3);  imshow(f_filtered2, []);
         
%% 
clc; clear all;  close all;

f = imread('moon.tif');

h1 = ones(3, 3) / 9;
h2 = fspecial( 'average', 3 );

f1 = conv2( f, h1 );
f1 = f1(2:end-1, 2:end-1);
f2 = imfilter( f, h2 );

%figure;   imshow( f1, [] );
%figure;   imshow( f2, [] );

%%
clc; clear;  close all;

f = imread('moon.tif');
h1 = fspecial( 'gaussian', 3, 0.5);
f1 = imfilter( f, h1 );
%figure;  imshow(f1, []);

h2 = fspecial( 'gaussian', 15, 0.5);
f2 = imfilter( f, h2 );
%figure;  imshow(f2, []);

h3 = fspecial( 'gaussian', 49, 0.5);
f3 = imfilter( f, h3 );
%figure;  imshow(f3, []);

%%
clc;  clear;  close all;

f = imread('moon.tif');
h1 = fspecial( 'average', 3);
f1 = imfilter( f, h1 );
%figure;  imshow(f1, []);

h2 = fspecial( 'average', 15);
f2 = imfilter( f, h2 );
%figure;  imshow(f2, []);

h3 = fspecial( 'average', 49);
f3 = imfilter( f, h3 );
%figure;  imshow(f3, []);

%%
clc;  clear;  close all;
f = imread('cameraman.tif');

h1 = fspecial( 'disk', 5);
f1 = imfilter( f, h1 );
%figure;  imshow(f1, []);

h2 = fspecial( 'disk', 15);
f2 = imfilter( f, h2 );
%figure;  imshow(f2, []);

h3 = fspecial( 'disk', 24);
f3 = imfilter( f, h3 );
%figure;  imshow(f3, []);

%%
clc;  clear;  close all;
% f = imread('cameraman.tif');

% f = zeros(30, 30);
% f(5:24, 13:17) = 1;

f = imread('moon.tif');

h1 = [0 1 0; 1 -4 1; 0 1 0];
h2 = [1 1 1; 1 -8 1; 1 1 1];
h3 = [1 2 1; 2 -12 2; 1 2 1];

f1 = imfilter( f, h1 );
f2 = imfilter( f, h2 );
f3 = imfilter( f, h3 );

%figure;   subplot(1, 4, 1);   imshow(f, []);
%          subplot(1, 4, 2);   imshow(f1, []);
%          subplot(1, 4, 3);   imshow(f2, []);
%          subplot(1, 4, 4);   imshow(f3, []);

%% edge detection
clc;   clear;   close all

f = imread( 'eight.tif' );
imshow(f);

f_log = edge(f, 'log');
f_canny = edge(f, 'canny');
f_roberts = edge(f, 'roberts');
f_prewitt = edge(f, 'prewitt');
f_sobel = edge(f, 'sobel');

h3 = [1 2 1; 2 -12 2; 1 2 1];
f_lap = imfilter(f, h3);

figure;  subplot(3, 3, 1);  imshow(f, []);
         subplot(3, 3, 2);  imshow(f_log, []);
         subplot(3, 3, 3);  imshow(f_canny, []);
         subplot(3, 3, 4);  imshow(f_roberts, []);
         subplot(3, 3, 5);  imshow(f_prewitt, []);
         subplot(3, 3, 6);  imshow(f_sobel, []);
         subplot(3, 3, 7);  imshow(f_lap, []);


