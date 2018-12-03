%PErgunta 2a)

%Colocasse a função como uma inline function para depois ser utilizada

f = inline(' 2 * exp((-R * x)/(2 * L)) * cos(x * sqrt(1/(L * C) - (R/(2 * L))^2))','x','R','L','C');

%inicializar as primeiras variáveis, bem como o erro associado

x0 = 0;
x1 = 10^-4;
erro = 10^-8;

%utilizar uma vez a função iteradora do método da secante para depois
%entrar no while loop com uma diferença inicial

x2 = x1 - (f(x1,76.8,7.8,7.6*10^-4) * (x1 - x0))/(f(x1,76.8,7.8,7.6*10^-4) - f(x0,76.8,7.8,7.6*10^-4));
dif = abs(x1-x0);

%inicializa os primeiros valores da tabela

Tabela = [ x1 ; x2];

%loop que continua até o erro ser inferior ao erro predefinido

while(dif >= erro)
   %analisa novas iteradas
   
   x0 = x1;
   x1 = x2;
   
   %realiza a função iteradora do método da secante
   
   x2 = x1 - (f(x1,76.8,7.8,7.6*10^-4) * (x1 - x0))/(f(x1,76.8,7.8,7.6*10^-4) - f(x0,76.8,7.8,7.6*10^-4));
   fprintf('%d\n',x2);
   
   %vai colocando as novas iteradas na tabela 
   
   Tabela = [Tabela ; x2];
   
   %recalcula o erro
   
   dif = abs(x1 - x0);
  
end

Tabela
fprintf('%d\n',x2);





