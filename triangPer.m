function [y]=triangPer(f,t)
% genera una señal periodica de forma triangular
T=1/f;
y=zeros(1,length(t));
Nmin=round(min(t)/T);
Nmax=round(max(t)/T);
for k=Nmin:Nmax
    y=y+triangle(f,t-k*T);
end
end