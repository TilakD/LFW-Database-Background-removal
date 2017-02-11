
clc;
pathname = 'C:\Users\USER\Desktop\LWF DATABASE_BACK_REMOVE\resized_database_after_scale_normalization\s';
dest = 'C:\Users\USER\Desktop\LWF DATABASE_BACK_REMOVE\resized_database_after_scale_normalization\s';
for j = 1:60
    for i = 1:20

img = imread(strcat(pathname,num2str(j),'\',num2str(i),'.jpg'));
    filename = strcat(pathname, num2str(i), '.jpg'); 
%img=etch_background( img);
img=optimiser(img );
imwrite(img,strcat(dest,num2str(j),'\',num2str(i),'.jpg'));

    end
end
