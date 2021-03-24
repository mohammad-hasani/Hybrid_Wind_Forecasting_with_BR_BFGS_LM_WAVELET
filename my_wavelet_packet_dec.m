function [packets] = my_wavelet_packet_dec(signal, wname, level)
packets = [];
    [a, d] = wavelet_packet_dec(signal, wname);
    packets = [packets a];
    packets = [packets d];
    
    
    for i=1:level-1
        for j=1:power(2, i)
            [a, d] = wavelet_packet_dec(packets(:, j), wname);
            packets = [packets a];
            packets = [packets d];
        end
        tmp = power(2, i);
        tmp = tmp * 2 - 1;
        packets = packets(:, end-tmp:end);
    end
end

