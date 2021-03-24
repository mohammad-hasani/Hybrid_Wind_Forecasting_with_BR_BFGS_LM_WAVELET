function [signal, signal2] = wavelet_packet(level)
    wname = 'db2';

    signal = signal_random();
    
    packets = my_wavelet_packet_dec(signal, wname, level);
    
    signal2 = my_wavelet_packet_rec(packets, wname, level);
    
end