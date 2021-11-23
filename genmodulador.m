function [y]=genmodulador(senal,fm,ini,fin,pasos)
if senal=="coseno"
    y=cos(2*pi*fm*linspace(ini,fin,pasos));
elseif senal=="triangular"
    y=triangPer(fm,linspace(ini,fin,pasos));
elseif senal=="cuadrada"
    y=cuad(fm,linspace(ini,fin,pasos));
elseif senal=="aleatoria"
    y=aleatoria(fm,linspace(ini,fin,pasos));
else
    error("Error genmodulador: la señal debe ser cuadrada, coseno, triangular o aleatoria");
    return
end
end
