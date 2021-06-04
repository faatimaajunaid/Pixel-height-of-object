
function [objectheight,BW] = findheight(inputfile)

%inputfile='cameraman.tif';


I = imread(inputfile);
level = graythresh(I);
BW = im2bw(I,level);
BW = imfill(BW,'holes');
imshow(BW);

top = 0;
bottom = 0;

[rows,columns,dim] = size(BW);

for i=1:rows
    for j=1:columns
        if (BW(i,j)==0 && top==0)
            top=i;
        end
        
        if (BW(i,j)==0)
            bottom=i;
        end
    end
end

objectheight = bottom-top+1;

