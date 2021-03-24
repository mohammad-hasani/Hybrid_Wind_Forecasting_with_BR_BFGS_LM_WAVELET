function [wpt] = WPD(x)
%WPDSAMPLE Summary of this function goes here
%   Detailed explanation goes here
wpt = wpdec(x,3,'db1', 'norm', 2);
end

