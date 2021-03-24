function [e] = MAPE(F, target)

mape = 100 * (mean(abs(F-target)./mean(target)));

e = mape;

end

