%%
clc;  close all;  clear;

%% read image
I = imread('letterT.tif');
[r, c] = size( I );
figure;  imshow(I, []);

%% transition matrix
M = [1 0 r/2; 0 1 c/2; 0 0 1];
for i = 1 : r
    for j = 1 : c
        n = M * [i; j; 1];
        K(n(1), n(2)) = I(i, j); 
    end
end
figure;   imshow(K, []);

%% rotation matrix
theta = 7 * pi/4;
R = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];

%% perform transition and rotation
for i = 1 : r
    for j = 1 : c
        n = M * R * [i; j; 1];
        if ( ceil(n(1)) > 0 && ceil(n(2)) > 0 )
            N( ceil(n(1)), ceil(n(2)) ) = I(i, j);
        end
    end
end
figure;  imshow(N);

%%
figure;  imshow(imrotate(I, 315, 'bicubic'));

%% perform rotation
% for i = 1 : r
%     for j = 1 : c
%         n = R * [i; j; 1];
%         if ( ceil(n(1) + r/2) > 0 && ceil(n(2) + c / 2) > 0)
%              N(ceil(n(1) + r/2), ceil(n(2) + c/2)) = I(i, j);
%         end
%     end
% end
% figure;  imshow(N);