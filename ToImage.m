% 将用[0,n]表示的二维数据转化为用colors表示的图片
function image = ToImage(img, colors)
[height,width] = size(img);
image = zeros(height, width, 3);
if min(img, [], "all")==0
    for m=1:height
        for n=1:width
            image(m,n,:) = colors(img(m,n)+1,:);
        end
    end
else
    for m=1:height
        for n=1:width
            image(m,n,:) = colors(img(m,n),:);
        end
    end
end
end