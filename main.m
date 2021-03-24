function [] = main(Data)

data = Normalization(Data);

level = 3;
wname = 'db2';
packets = my_wavelet_packet_dec(data, wname, level);

nets = [];
fs = [];
test_targets = [];
len = size(packets);
len = len(2);

for i=1:len
    disp(i);
    [m, target] = DataPrepration(packets(:, i));
    
    [train_data, test_data] = splitData(m, 8000, 700);
    [train_target, test_target] = splitData(target, 8000, 700);

    layers = [10 10];


    net = feedforwardnet(layers, 'trainlm');
    weights = getwb(net);
    net = MLP(train_data, train_target, 'trainbr', weights, layers);
    weights = getwb(net);
    net = MLP(train_data, train_target, 'trainbfg', weights, layers);
    weights = getwb(net);
    net = MLP(train_data, train_target, 'trainlm', weights, layers);
    nets = [nets net];
    
    f = net(test_data);
    f = f';
    fs = [fs f];
    
    test_target = test_target';
    test_targets = [test_targets test_target];
    
end

% test target ro bayad az wavelet bargardanim

f = my_wavelet_packet_rec(fs, wname, level);
test_target = my_wavelet_packet_rec(test_targets, wname, level);

% ba natayej bargasht dade shode az 8 ta model bedim be Mape



%signal2 = my_wavelet_packet_rec(packets, wname, level);

mape = MAPE(f, test_target);
disp(mape)
end

