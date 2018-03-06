function [W] = UpdateNet(w,lr,output,target,input,Wfinal,W2)
   
    h = Wfinal+(lr*(target-output)*input)';
    W = [w h W2];
end