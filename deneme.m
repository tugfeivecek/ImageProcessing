1:9
%% 1'den 9a kadar 3x3 lük matris oluşturma
A=reshape( 1 : 9 , [3,3])
B=[ 1 0 0;0 1 1 ; 1 0 0]
A*B
%% element ways carpımı maskeleme yapmak icin
C=A.*B
%%  renk sınırlarını ölçeklendirir, böylece görüntü, renk haritasının tüm aralığını kullanır;
%% burada A'daki en küçük değer, renk haritasındaki ilk renkle ve en büyük değer, son renkle eşleşir.
imagesc(A)

b=[1 ; 2 ;3]
det(A)
A(3,2)=11
x=inv(A)*b
%% soldakini sağdakine bölüyo
C=A.\B %% x=A\b anın tersi b
y=1:6   %% 1     2     3     4     5     6
y.^2    %% eleman eleman carpmaya yarıyo      1     4     9    16    25    36
y'
%% GAMA
I=imread('cameraman.tif'); %% gama iş yapmadan once normalize et
I
Id=im2double(I)
T=@(r)r^(2.5) %function handle
T=@(r)r.^(2.5) % her bir pixeli ayrı ayrı gormak için 
G=T(Id) % gamayı uyguladık siyhlaştı
imshowpair(Id,G,'montage')
T=@(r)r.^(0.5) % beyazlastırmak ıcın
G=T(Id)  
imshowpair(Id,G,'montage')


