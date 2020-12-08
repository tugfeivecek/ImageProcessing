%% create image 1
f1 = zeros(30, 30);
f1(5:24, 13:17) = 1;
% figure;  imshow(f1, 'InitialMagnification', 'fit');

%% fft for f1
F = fft2( f1 );
Fshifted = fftshift( F );
Fshiftedabs = abs( Fshifted );
% figure;  imshow(Fshiftedabs, [], 'InitialMagnification', 'fit');

F3 = log( 1 + Fshiftedabs);
% figure;  imshow(F2, [], 'InitialMagnification', 'fit');

%% create image 2
f1 = zeros(30, 30);
f1(5:24, 13:17) = 1;
f2 = f1';
% figure;  imshow(f2, 'InitialMagnification', 'fit');

%% fft for f2
F2 = fft2( f2 );
Fshifted2 = fftshift( F2 );
Fshiftedabs2 = abs( Fshifted2 );
% figure;  imshow(Fshiftedabs, [], 'InitialMagnification', 'fit');

F22 = log( 1 + Fshiftedabs2);
% figure;  imshow(F2, [], 'InitialMagnification', 'fit');

%% subplot
% figure;  subplot(2, 2, 1);  imshow(f1, []);
%         subplot(2, 2, 2);  imshow(f2, []);
%         subplot(2, 2, 3);  imshow(F3, []);
%         subplot(2, 2, 4);  imshow(F22, []);

%% inverse fft
G = ifftshift( Fshifted );
g = ifft2( G );
figure;   imshow(g, [], 'InitialMagnification', 'fit');

%%
