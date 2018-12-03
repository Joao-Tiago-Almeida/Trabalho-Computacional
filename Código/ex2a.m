function Tabela = ex2a(R, L, C)
   
    %inicializar as primeiras variáveis, bem como o erro associado

    x0 = 0;
    x1 = 10^-4;
    erro = 10^-8;

    %utilizar uma vez a função iteradora do método da secante para depois
    %entrar no while loop com uma diferença inicial

    x2 = x1 - (f(R, L, C, x1) * (x1 - x0))/(f(R, L, C, x1) - f(R, L, C, x0));
    
    delta = abs(x1-x0);

    %inicializa os primeiros valores da tabela
    var = 0;
    Tabela = zeros(10, 1);
    Tabela(1,1) = x1;
    Tabela(2,1) = x2;
    %loop que continua até o erro ser inferior ao erro predefinido
  
 
    while(delta >= erro)
       %analisa novas iteradas

       x0 = x1;
       x1 = x2;
       var = var + 1;

       %realiza a função iteradora do método da secante

       x2 = x1 - (f(R, L, C, x1) * (x1 - x0))/(f(R, L, C, x1) - f(R, L, C, x0));

       %vai colocando as novas iteradas na tabela 

       Tabela(var , 1) = x2;

       %recalcula o erro

       delta = abs(x1 - x0);

    end

end

function y = f(R, L, C, x)

y = 2 * exp(-R/(2 * L) * x) * cos(x * sqrt(1/(L * C) - (R/(2 * L))^2));

end