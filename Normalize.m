% 忽略百分之percent的较大值，归一化输入数据
function B = Normalize(A, percent)
tr = min(maxk(A(:), round(length(A(:))*percent)));
B = min(A(:), tr);
B = reshape(B/max(abs(B)), size(A));
end
