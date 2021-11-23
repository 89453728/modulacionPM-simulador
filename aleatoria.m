function y=aleatoria(f,t)
% funcion para generar una señal aleatoria que no presente caracteristicas
% de ruido y que su espectro sean frecuencias de un solo tono reconocidas

% propongo 4 frecuencias para construir una señal aleatoria(sin que sea
% ruido)
f1=f;
f2=3*f;
f3=5*f;
f4=7*f;
%f5=9*f;

% genero los coeficientes de la señal
A1=randn()*5-2.5;
A2=randn()*5-2.5;
A3=randn()*5-2.5;
A4=randn()*5-2.5;
%A5=randn()*5-2.5;
y=A1*cos(2*pi*f1*t)+A2*cos(2*pi*f2*t)+A3*cos(2*pi*f3*t)+A4*cos(2*pi*f4*t);
end