%Usamos como primera aproximación el punto [0,0]
clear
clc

fun = @Validacion;
z0 = [1; 122; 0.0025; 0.05]; %T10 P10 W10 W4r 
 
options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);

x = fsolve(fun, z0, options)