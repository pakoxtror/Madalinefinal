function output = CheckPattern (Data,W)
Z=Data(:,end);
InputP=Data(:,1:end-1);
Input=[InputP -ones(size(Data,1),1)];
H=(Input*W);
Y=sign(H);
Output=mode(Y,2);

output=isequal(Output,Z);
end
