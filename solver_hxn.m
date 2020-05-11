fun = @hxn;
x0 = [0;0;0;0;0;0;0;0];

options = optimoptions('fsolve','Display','none','PlotFcn',@optimplotfirstorderopt);

x = fsolve(fun,x0,options)