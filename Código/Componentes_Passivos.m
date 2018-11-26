%   variaveis constantes, n�meros mecanogr�ficos dos alunos
Rodrigo = 190185;
Rafael = 190171;
Joao = 190119;
Vasco = 190205;

%   numero do grupo
G = 4;

%   soma dos numeros mecanograficos dos alunos
s = Rodrigo + Rafael + Joao + Vasco;

%   Fun��o que transfroma um numero numa string
d = num2str(s);

%   matriz linha com o numero 'd'
s = [str2double(d(1)), str2double(d(2)), str2double(d(3)), str2double(d(4)), str2double(d(5)), str2double(d(6))];
d = s;

%   matrizes auxiliares para calculos defenidos no enunciado
auxL = [1; 0; 0; 0; 10^-1; 10^-2];
auxR = [10; 0; 0; 1; 10^-1; 0];
auxC = [10^-4; 10^-4; 10^-5; 0; 0; 0];

%   valores correspondes aos componentes passivos do circuito,
%   para o respetivo grupo
L = d * auxL;
R = d * auxR;
C = d * auxC;

%   Divide o intervalo [0,1] em 100 pontos
t = linspace(0, 1, 100);

%   Funcao da Carga em funcao do tempo 
Q = G * exp(-R/(2 * L) * t) .* cos(t * sqrt(1/(L * C) - (R/(2 * L))^2));

%---------------------------Exercicio 1----------------------------------

%  alínea A
   ex1a(Q, t);

%  alínea B
   ex1b(L, C);
   
%  alínea C
   ex3a(Q, t, L, R, C);
   