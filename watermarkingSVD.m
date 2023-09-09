% Charger l'image que vous souhaitez tatouer
clc;  clear all;  close all;
A=imread('imag/im1.png'); 
hote=imresize(A,[256 256]); % Redimensionnée l'image

% Appliquer la SVD à l'image
[U, S, V] = svd(double(hote));

% Insérer votre tatouage ( 42) dans les valeurs singulières S

marque_value = 00444;
S(1, 1) = marque_value;

% Reconstruire l'image tatouée
imageW= uint8(U * S * V');

% Afficher l'image originale et l'image tatouée
subplot(1, 2, 1);
imshow(hote);
title('Image Originale');

subplot(1, 2, 2);
imshow(imageW);
title('Image Tatouée');

