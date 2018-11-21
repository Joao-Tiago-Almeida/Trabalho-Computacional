f = inline(' 2 * exp(-R/(2 * L) * x) .* cos(x * sqrt(1/(L * C) - (R/(2 * L))^2))','x','R','L','C');
x0 = 0;
x1 = 10^-4;
erro = 10^-8;
x2 = x1 - (f(x1,76.8,7.8,7.6*10^-4) * (x1 - x0))/(f(x1,76.8,7.8,7.6*10^-4) - f(x0,76.8,7.8,7.6*10^-4));
dif = abs(x1-x0);
Tabela = [ x1 ; x2];

while(dif >= erro)
   x0 = x1;
   x1 = x2;
   x2 = x1 - (f(x1,76.8,7.8,7.6*10^-4) * (x1 - x0))/(f(x1,76.8,7.8,7.6*10^-4) - f(x0,76.8,7.8,7.6*10^-4));
   fprintf('%d\n',x2);
   Tabela = [Tabela ; x1 ; x2];
   dif = abs(x1 - x0);
  
end
fprintf('%d\n',x2);





