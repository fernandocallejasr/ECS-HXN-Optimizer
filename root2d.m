function F = root2d(z)

x = z(1);
y = z(2);
u = z(3);
 
Rh = 3*x-y;
Rh1 = 5*exp(u);
A3 = 2;

F(1) = Rh*exp(-exp(-(x+y)/A3)) - y*(1+x^2)*u;
F(2) = x*cos(y) + Rh1*y*sin(x)-0.5*u ;
F(3) = x*cos(y) + Rh1*y*sin(x)-0.5*u +x*y-12*u;