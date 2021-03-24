function [output1,output2] = DataPrepration(data)
bs = 50;
bs2 = size(data);
bs2 = bs2(1) - (bs-2);
tmp = zeros(bs2-1,bs-1);
target = zeros(bs2-1,1);
for i=1:size(data)
    if i==bs2
        break;
    end
    for j=1:bs-1
        tmp(i,j) = data((i+j)-1);
    end
    target(i)= data((i+j));
end

output1 = tmp';
output2 = target';
end