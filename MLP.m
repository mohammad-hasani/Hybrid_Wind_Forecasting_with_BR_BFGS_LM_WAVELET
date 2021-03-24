function [output_net] = MLP(train_data,train_target, algorithm, weights, layers)
net = feedforwardnet(layers, algorithm);
net = setwb(net, weights);
[net, tr] = train(net, train_data, train_target);
output_net = net;
end

