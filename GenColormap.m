% 根据rgb值生成colormap
function cm = GenColormap(colors)
len = length(colors);
cm = hex2rgb(colors{1});
for i = 2:len
    cm = cat(1, cm, hex2rgb(colors{i}));
end
end


function rgb=hex2rgb(hex)
hex = upper(hex);
exchange_list='0123456789ABCDEF#';
rgb=zeros(1,3);
for i=1:3
    tempCoe1=find(exchange_list==hex(i*2))-1;
    tempCoe2=find(exchange_list==hex(i*2+1))-1;
    rgb(i)=16*tempCoe1+tempCoe2;
end
rgb = rgb/255;
end