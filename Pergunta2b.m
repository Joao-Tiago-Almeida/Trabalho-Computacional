% Método de Newton aplicado à pergunta 2b


%Inicializo a variável R0 ao seu valor inicial
R0 = 76.8; 
%Inicializo o valor para o qual vamos fazer com que a função convirja
Igualdade = 2.0;

%O n vai conter o numero de iteradas
n=0;
%While infinito, que só para com o break em baixo
while(1)
    %Aumenta o número de iteradas a cada entrada no loop
    n = n+1;
    %Fiz round até 4 casas decimais de f(R0), pois a partir de 4 a
    %convergência não era garantida ou precisava de demasiadas iteradas
    %caso seja igual à igualdade, ele saí do loop
    if( round(f(R0),4) == Igualdade)
        break
    end  
    %Vai atualizando o R0 com a função iteradora de Newton
    R0 = R0 - f(R0)/deri(R0);
end
%Imprime os valores finais
Valor_de_R0 = R0
Num_de_iteradas = n
Valor_final_de_igualdade = f(R0)
