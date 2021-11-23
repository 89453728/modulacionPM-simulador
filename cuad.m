function y=cuad(f,t)
p=sin(2*pi*f*t);
y(p>=0)=1;
y(p<0)=0;
end