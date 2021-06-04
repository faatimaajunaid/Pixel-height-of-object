# Pixel-height-of-object
Finding height of objects from images

We photographed people and found their height:

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
