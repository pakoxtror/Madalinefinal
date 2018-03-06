function GrapDatos(Data)
Inp=Data(:,1:end-1);
Out=Data(:,end);
plot(Inp(find(Out==1),1),Inp(find(Out ==1),2),'ro');hold on;
plot(Inp(find(Out==-1),1),Inp(find(Out ==-1),2),'gx');hold off;
axis([-1.5, 1.5, -1.5, 1.5])