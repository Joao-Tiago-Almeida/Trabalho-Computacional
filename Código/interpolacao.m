function y = interpolacao(X, Y, ponto, num_pontos )
        
    %vetor auxliar dos A's, dimensão num_pontos - 1;
    A = zeros(1, num_pontos - 1);
    for n = 2:num_pontos
        A(n -1) = calcula_A(X, Y, n, 0)
    end
    
        %cálculo do polinómio
    %valor apróximado 
    %ordem a calcular
    ordem = num_pontos -1;
    while ( ordem ~= 0)
        temp = 1;
       for n = 1:ordem 
          temp  = temp*(ponto - X(n));
       end
       if ordem == num_pontos -1
           
            soma = A(ordem) * temp;
       else
            soma = soma + A(ordem) * temp;
       end
       ordem = ordem - 1;
    end
    
    %valor aproximado
    y = soma + Y(1);
end

function  A = calcula_A(X, vetor, tamanho, soma_total)
    
    if soma_total == 0
        A = 0;
    end
    
    %se o vetor tiver mais do que dois elementos
    if tamanho > 2
        aux1 = zeros(1, tamanho - 1);
        aux2 = zeros(1, tamanho - 1);
        aux11 = zeros(1, tamanho - 1);
        aux22 = zeros(1, tamanho - 1);
       for n = 1:tamanho - 1
           aux1(n) = vetor(n);
           aux2(n) = vetor(n+1);
           aux11(n) = X(n);
           aux22(n) = X(n+1);
           temp1 = calcula_A(aux11, aux1, tamanho-1, soma_total);
           temp2 = calcula_A(aux22, aux2, tamanho-1, soma_total);
           A = soma_total + (temp2 - temp1)/(X(tamanho) - X(1));
       end
    else
        A = (vetor(2) - vetor(1))/(X(2) - X(1));
    end
 end
