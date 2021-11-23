% Ejemplo de modulador PM aplicando multiplicadores, sumadores y
% generadores sinusoidales

close all;
clear;

% PARAMETROS GENERALES
t_ini=-1e-3;% instante inicial de tiempo
t_fin=1e-3;% instante final de tiempo
fo=1e6;% frecuencia de muestreo

% PARAMETROS DE LA MODULADORA
fm=1e3;% frecuencia de la moduladora
mup=1;
t=linspace(t_ini,t_fin,fo);% eje de tiempo
m=genmodulador('aleatoria',fm,t_ini,t_fin,fo); % genera una moduladora con la forma que
                                % quiero y a la frecuencia que pongo
phi=mup*m;

% PARAMETROS DE LA PORTADORA
fc=20e3;% frecuencia de la portadora
px_fase=sqrt(2)*cos(2*pi*fc*t);% portadora en fase
px_cuad=sqrt(2)*sin(2*pi*fc*t);% portadora en cuadratura

% MODULACION
A=100;% amplificacion
a=.01;% atenuacion del canal
xT_fase=A*cos(phi); % moduladora pasada en fase
xT_cuad=A*sin(phi); % moduladora pasada en cuadratura
xT=px_fase.*xT_fase - px_cuad.*xT_cuad; % señal transmitida

% CANAL
r=a*xT;

% representacion de los resultados
% representacion de cuatro graficas(moduladora en fase y cuadratura,
% moduladora y señal recibida)
figure(1);
subplot(2,2,1); % moduladora en fase
plot(t,xT_fase);
title("moduladora en fase");
subplot(2,2,2);% moduladora en cuadratura
plot(t,xT_cuad);
title("moduladora en cuadratura");
subplot(2,2,3);% moduladora
plot(t,phi);
title("moduladora");
subplot(2,2,4); % señal recibida
plot(t,r);
title("señal recibida");