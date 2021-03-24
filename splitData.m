function [mytrain, mytest] = splitData(data, train_size, test_size)

shape = size(data);
shape = shape(1);
mytrain = data(1:shape, 1: train_size);
mytest = data(1: shape, train_size: train_size + test_size);
end

