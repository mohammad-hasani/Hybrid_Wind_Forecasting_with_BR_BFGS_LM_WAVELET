function [output] = Normalization(Data)
Data = table2array (Data); 
mindata = min (Data);
maxdata = max (Data);
norm_data = (Data - mindata) / ( maxdata - mindata);
output = norm_data;
end

