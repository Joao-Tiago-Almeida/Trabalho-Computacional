function ex2b(R0)

    %Inicializo o valor para o qual vamos fazer com que a função convirja

    Igualdade = 2.0;

    %O n vai conter o numero de iteradas

    n=0;

    %While infinito, que só para com o break em baixo
    quit = 0;
    while(~quit)
        
        if( round(f(R0) ,2) == Igualdade)
            quit = 1;
        end

        %Aumenta o número de iteradas a cada entrada no loop

        n = n+1;

        %Fiz round até 4 casas decimais de f(R0), pois a partir de 4 a
        %convergência não era garantida ou precisava de demasiadas iteradas
        %caso seja igual à igualdade, ele saí do loop

        %Vai atualizando o R0 com a função iteradora de Newton

        R0 = R0 - f(R0)/deri(R0);
    end

    %Imprime os valores finais e os valores pedidos
    %Grafico(11,R0,f(R0),0)
    Valor_de_R0 = R0;
    Num_de_iteradas = n;
    Valor_final_de_igualdade = f(R0)
end

function y = deri( x )

% first de output and then the name with input, function name = file name
%y= 4 *(((-10^-2 / (2 * 7.8) ) * exp((-x * 10^-2) / (2 * 7.8)) * cos(10^-2 * sqrt(1/(7.8 * 7.6*10^-4) - (x/(2 * 7.8))^2))) - ( exp((-x * 10^-2)/(2 * 7.8)) * (10^-2 / ( 4 * 7.8^2)) * x * (1/( sqrt(1/(7.8 * 7.6*10^-4) - (x/(2 * 7.8))^2))) * sin(10^-2 * sqrt(1/(7.8 * 7.6*10^-4) - (x/(2 * 7.8))^2))));

y = (x * exp((-x)/1560) * sin(sqrt((125000/741) - ((25 * x^2) / 6084)) / 100) / (6084 * sqrt((125000/741) - ((25 * x^2)/6084) ))) - ((exp(-x/1560) *  cos(sqrt((125000/741) - ((25 * x^2) / 6084)) / 100)) / 390);

end

function y = f( x )
% first de output and then the name with input, function name = file name
y= 4 * exp((-x * 10^-2)/(2 * 7.8) ) * cos(10^-2 * sqrt(1/(7.8 * 7.6*10^-4) - (x/(2 * 7.8))^2));


end