function [a, d] = wavelet_packet_dec(p, ss)   
      % ss='db2';
        [c,l] = wavedec(p,1,ss);                
                
        ca = appcoef(c,l,ss, 1);              
                                            
        cd = detcoef(c,l,1);                       
      
        a = wrcoef('a',c,l,ss,1); 
                                  
        d = wrcoef('d',c,l,ss,1);
        
        
        
      %  a0 = waverec(c,l,ss);                                
end

