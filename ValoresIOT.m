function [input,output,target] = ValoresIOT(data,w,i)
inputP= data(:,1:end-1);
inputPP=[inputP -ones(size(data,1),1)];    
input = inputPP(i,:);
target = FsignoAd(data(i,end));
w1 = w(:,end);
w2 = w(:,(end-1));
w = [w2 w1];
output = (input*(w));
end
    