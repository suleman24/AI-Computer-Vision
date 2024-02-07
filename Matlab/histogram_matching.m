i = imread('C:\Users\sulem\Desktop\lena.png');
target = imread('C:\Users\sulem\Desktop\seed.png');
 
m= histeq(i,imhist(target));

imshow(m)
