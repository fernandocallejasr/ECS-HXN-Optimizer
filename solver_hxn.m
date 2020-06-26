clear
clc

fun = @hxn;
x0 =    [10; %No debemos inicializar los flujos másicos con valores iguales 
         10;
         10;
         10;
         10;
         0.7;
         0.95;
         0.3;
         0.19;   
         0.5;
         0.7;
         0.02 ] 

options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);

y = fsolve(fun,x0,options)

%y = fsolve(fun,x0);