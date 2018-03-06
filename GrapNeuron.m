function GrapNeuron(EvolW,EvolW2)
x = -1.5:0.1:1.5;
y = (-x*EvolW(1)+EvolW(3))/EvolW(2);
y2 = (-x*EvolW2(1)+EvolW2(3))/EvolW2(2);
plot(x,y,x,y2);
hold on

end