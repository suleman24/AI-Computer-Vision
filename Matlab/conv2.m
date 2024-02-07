i = imread('lena.jfif');
f = fspecial('average',[10,10]);

conn = conv2(i,f);

imshow(conn)
