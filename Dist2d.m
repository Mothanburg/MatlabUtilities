% 二维平面分布热点图
function Dist2d(X, Y, xbins, ybins)
xNumBins = numel(xbins);
yNumBins = numel(ybins);

Xi = round(interp1(xbins, 1:xNumBins, X, 'linear', 'extrap'));
Yi = round(interp1(ybins, 1:yNumBins, Y, 'linear', 'extrap'));
H = accumarray([Yi(:),Xi(:)], 1, [yNumBins,xNumBins]);

imagesc(xbins, ybins, H);
set(gca, 'YDir', 'normal');
cm = colormap('jet');
cm(1, :) = [1 1 1];
colormap(cm);
end