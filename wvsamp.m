function [a1,a3,d1,d2,d3,c,l]=wvsamp(p,ss)       
      % ss='db2';
        [c,l] = wavedec2(p,3,ss);                
                
        %ca3 = appcoef(c,l,ss,3);              
                       
        %cd3 = detcoef(c,l,3);                       
        %cd2 = detcoef(c,l,2);                       
        %cd1 = detcoef(c,l,1);                       
        a1 = wrcoef2('a',c,l,ss, [3 1]);
        d1 = wrcoef2('h',c,l,ss, [3 1]);
        
        
        
        
        
      
        a3 = wrcoef('a',c,l,ss,3); 
        disp(size(a3));
        d1 = wrcoef('d',c,l,ss,1);        
        d2 = wrcoef('d',c,l,ss,2); 
        d3 = wrcoef('d',c,l,ss,3);                  
                        
                          
        
      %  a0 = waverec(c,l,ss);                                
end