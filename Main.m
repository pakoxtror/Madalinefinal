clear;
clc;
load XOR2
LR=0.1;

W1=PerceptronWeigthsGenerator(Data);
W2=PerceptronWeigthsGenerator(Data);
W = [W1 W2];
Epoc=1;
EvolW=W;
while ~CheckPattern(Data,EvolW(:,end)) && Epoc<100
    for i=1:size(Data,1)
        [Input,Output,Target]=ValoresIOT(Data,EvolW,i);
        E1 = B(Target,Output(1));
        E2 = B(Target,Output(2)); 
        if (E1 >= E2)
            Outputfinal = Output(1);
            Wfinal = EvolW(:,end-1);
            W2 = EvolW(:,end);
        else
            Outputfinal = Output(2);
            Wfinal = EvolW(:,end);
            W2 = EvolW(:,end-1);
        end
        if (mode(Outputfinal))~=Target
           EvolW=UpdateNet(EvolW,LR,Outputfinal,Target,Input,Wfinal,W2);
        end
    end
    Epoc=Epoc+1;
end

for i=1:2:size(EvolW,2)-1
    GrapNeuron(EvolW(:,i),EvolW(:,i+1))
    GrapDatos(Data)
    drawnow
end
