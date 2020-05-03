%Usamos como primera aproximación el punto [0,0]

fun = @root2d;
x0 = [0;0;0];

options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);

x = fsolve(fun,x0,options)