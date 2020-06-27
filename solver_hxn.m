clear
clc

fun = @hxn;
x0 =    [5; %No debemos inicializar los flujos másicos con valores iguales 
         13;
         4.1;
         2.8;
         4.3;
         0.7;
         0.5;
         0.1;
         0.19;   
         0.5;
         0.7;
         0.02 ] 

options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);

y = fsolve(fun,x0,options)

%y = fsolve(fun,x0);