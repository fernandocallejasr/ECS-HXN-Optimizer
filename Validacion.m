function F = Validacion(z)


T10 = z(1);
P10 = z(2);
W10 = z(3);
W4r = z(4); 

%%%%%%%%%%%% Datos de variables Tabla 1 del documento%%%%%%%%%%%%
T2  = 118; %°C
T12 = 58; %°C
P2  = 583.96; %KPa
w2  = 0.0209; %kg kg^-1
m0  = 746.6/3600;
m2  = 2019.58/3600;

Khx2Ahx2 = 590;
Khr1Ahr1 = 79;
Khr2Ahr2 = 355;
KcoAco   = 120;

PiC     = 1.55;
PiT     = 6.80;
nC      = 0.65;
nT      = 0.64;

%Valores a investigar
k  = 1.4;
cp = 1006 ; %J/kg °K
gamma = 2260.000; %kJ/kg

delta_w = 0.0184;%%%% w2-w10 de resultados     checar

T4r=273.15 + 235/(7.45/(log(P10/(610*(0.622/W4r+1)))-1));
T6=(273.15+((235)/((7.45)/(log(P10/(610*(0.622/W10+1)))-1))));

delta_T = T4r - T6;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% checar este

%%%%%%%%% Variables necesarias %%%%%%%%%%
CP_ = cp+(delta_w*gamma)/delta_T;

z1 = ((PiC^0.286)-1)/nC;
z2 = nT*(1-(PiT^-0.286));
C_ = CP_/cp;

nm = 0.2819;


Rhx2 = ((m2*cp*exp(Khx2Ahx2/(m0*cp)))-(m0*cp*exp(Khx2Ahx2/(m2*cp))))/((m0*cp*m2*cp)*(exp(Khx2Ahx2/(m0*cp))-exp(Khx2Ahx2/(m2*cp))));
Rhr1 = (1/(m0*cp))+(1/(Khr1Ahr1));
Rhr2 = ((m0*cp*exp(Khr2Ahr2/(m0*CP_)))-(m0*CP_*exp(Khr2Ahr2/(m0*cp))))/((m0*CP_*m0*cp)*(exp(Khr2Ahr2/(m0*CP_))-exp(Khr2Ahr2/(m0*cp))));
Rco  = ((m0*cp*exp(KcoAco/(m0*CP_)))-(m0*CP_*exp(KcoAco/(m0*cp))))/((m0*CP_*m0*cp)*(exp(KcoAco/(m0*CP_))-exp(KcoAco/(m0*cp))));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Función %%%%%%%%%%%%%%%%%%%%%%%


F(1) = (T2 * (z1+1-(z1/nm)) + (T4r - T6)*(C_-1) -T10)*(m0 * cp * Rhx2) - (T2 * (z1+1)) + T12;
F(2) = (T10 - C_*T4r + T6*(C_-1)) * (m0*cp*Rhr1-2) + (z1*T2/nm)*(m0*cp*Rhr1 - 2 + 1/z2) - T4r;     % Revisar wr's + 1 en denominador de T4 y T6
F(3) = ((z1*(1-z2)/(z2*nm))*T2 + C_*(T4r - T6) - T10)*(m0*cp*Rhr2) - T4r + T6;
F(4) = T10*(1 - m0*CP_*Rco) + (z1*(1-z2)/(z2*nm))*T2*(m0*CP_*Rco - C_ - 1) + C_* T6;
