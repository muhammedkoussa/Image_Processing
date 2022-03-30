function b = bulHSV(I)
    Ig = rgb2gray(I);
    hsvI = rgb2hsv(I);
    hueI = uint8(round(hsvI(:,:,1)*360)<40);
    satI = uint8(hsvI(:,:,2)>0.1);
    valI = uint8(hsvI(:,:,3)>0.1);
    mask = Ig.*valI.*satI.*hueI;
    Ibw = mask>128;
    Id = imdilate(Ibw, strel('disk',5));
    Ifill = imfill(Id, 'holes');
    Ie = imerode(Ifill, strel('disk', 6));
    [L, n] = bwlabel(Ie,8);
    bolge = 0;
    for i=1:1:n
        [r, c] = find(L == i);
        alan = (max(r)-min(r))*(max(c)-min(c));
        if alan >= bolge
            bolge = alan;
            x=r;
            y=c;
        end
    end
    b = I(min(x):max(x),min(y):max(y),:);
end