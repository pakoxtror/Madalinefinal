function [x] = B(target, output)
R = target - output;
R = R * R';
x = R/2;
end

