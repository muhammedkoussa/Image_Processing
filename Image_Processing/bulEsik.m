function b = bulEsik(I,mi,ma)
    Ig = rgb2gray(I);
    Ie = Ig>mi&Ig<ma;
    Id = imdilate(Ie, strel('disk', 1));
    Ifill = imfill(Id, 'holes'); 
    Ie = imerode(Ifill, strel('disk', 11));
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
    b = I(min(x):max(x),min(y):max(y));
end