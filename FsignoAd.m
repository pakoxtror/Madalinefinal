function [a] = FsignoAd(huguito)
    if huguito > 0
        a = 1;
    elseif huguito <= 0
        a = -1;
    end