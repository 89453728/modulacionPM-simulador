function [y]=triangle(f,t)
% genera una señal triangular 
T=1/f;
y=t;
y(t>=-T/2 & t<=0)=(2/T)*t(t>=-T/2 & t<=0)+1;
y(t<=T/2 & t>=0)=-(2/T)*t(t<=T/2 & t>=0)+1;
y(t<-T/2)=0;
y(t>T/2)=0;
end