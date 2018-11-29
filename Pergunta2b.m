% M�todo de Newton aplicado � pergunta 2b


%Inicializo a vari�vel R0 ao seu valor inicial
R0 = 76.8; 
%Inicializo o valor para o qual vamos fazer com que a fun��o convirja
Igualdade = 2.0;

%O n vai conter o numero de iteradas
n=0;
%While infinito, que s� para com o break em baixo
while(1)
    %Aumenta o n�mero de iteradas a cada entrada no loop
    n = n+1;
    %Fiz round at� 4 casas decimais de f(R0), pois a partir de 4 a
    %converg�ncia n�o era garantida ou precisava de demasiadas iteradas
    %caso seja igual � igualdade, ele sa� do loop
    if( round(f(R0),4) == Igualdade)
        break
    end  
    %Vai atualizando o R0 com a fun��o iteradora de Newton
    R0 = R0 - f(R0)/deri(R0);
end
%Imprime os valores finais
Valor_de_R0 = R0
Num_de_iteradas = n
Valor_final_de_igualdade = f(R0)
