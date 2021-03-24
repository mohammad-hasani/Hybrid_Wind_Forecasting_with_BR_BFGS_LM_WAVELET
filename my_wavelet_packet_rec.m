function [packets_rec] = my_wavelet_packet_rec(packets, wname, level)
packets_rec = packets;
for i=level:-1:1
        for j = 1:2:power(2, i)
            ad = wavelet_packet_rec(packets_rec(:, j), packets_rec(:, j + 1), wname);
            packets_rec = [packets_rec ad];
        end
        tmp = power(2, i);
        tmp = tmp + 1;
        packets_rec = packets_rec(:, tmp:end);
    end
   
end

