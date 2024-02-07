I=imread('lena.jfif');
Gray=rgb2gray(I);
D=zeros(size(Gray));
Im=zeros(size(Gray));

P = cell(8);
r1=1;

for i=1:8
    P{i}=bitget(Gray,i);
    Im=bitset(Im,i,P{i});
    if(r1<=4)
        subplot(2,4,r1);imshow(logical(P{i}));
        r1 = r1+1;
    end
    if(r1>4 && r1<=8)
        subplot(2,4,r1);imshow(logical(P{i}));
        r1 = r1+1;
    end
end
figure;

r1=8;
for i=1:8
    if(r1>4)
        D=bitset(D,r1,P{r1});
        D=uint8(D);
        subplot(2,4,r1);imshow(D);
        r1 = r1-1;
    end
    if(r1<=4 && r1>0)
        D=bitset(D,r1,P{r1});
        D=uint8(D);
        subplot(2,4,r1);imshow(D);
        r1 = r1-1;
    end
end

