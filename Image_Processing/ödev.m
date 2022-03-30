
%% 1. Parlaklık görüntülerinden yüz bölgelerinin tesbiti
clc,clear
I1 = imread('Andrew_Hink_selfie.jpeg');
I2 = imread('utku.jpeg');
I3 = imread('sait.jpeg');
I4 = imread('kız.jpeg');
I5 = imread('muhammed.jpeg');
I6 = imread('burkay.jpeg');
subplot(2,3,1),imshow(bulEsik(uint8(I1.*0.5-5),77,110));
subplot(2,3,2),imshow(bulEsik(I2,53,135));
subplot(2,3,3),imshow(bulEsik(I3,65,152));
subplot(2,3,4),imshow(bulEsik(I4,92,147));
subplot(2,3,5),imshow(bulEsik(I5,52,107));
subplot(2,3,6),imshow(bulEsik(I6,115,147));
%% 2. Renge dayalı olarak yüz bölgelerinin tesbiti
clc,clear
I1 = imread('Andrew_Hink_selfie.jpeg');
I2 = imread('utku.jpeg');
I3 = imread('sait.jpeg');
I4 = imread('kız.jpeg');
I5 = imread('muhammed.jpeg');
I6 = imread('burkay.jpeg');
subplot(2,3,1),imshow(bulHSV(I1));
subplot(2,3,2),imshow(bulHSV(I2.*2-25));
subplot(2,3,3),imshow(bulHSV(I3.*2-25));
subplot(2,3,4),imshow(bulHSV(I4));
subplot(2,3,5),imshow(bulHSV(I5));
subplot(2,3,6),imshow(bulHSV(I6));