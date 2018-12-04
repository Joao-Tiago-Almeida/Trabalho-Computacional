%   variáveis constantes, números mecanográficos dos alunos
Rodrigo = 190185;
Rafael = 190171;
Joao = 190119;
Vasco = 190205;

%   número do grupo
G = 4;

%   soma dos números mecanográficos dos alunos
s = Rodrigo + Rafael + Joao + Vasco;

%   Função que transfroma um número numa string
d = num2str(s);

%   matriz linha com o número 'd'
s = [str2double(d(1)), str2double(d(2)), str2double(d(3)), str2double(d(4)), str2double(d(5)), str2double(d(6))];
d = s;

%   matrizes auxiliares para cálculos defenidos no enunciado
auxL = [1; 0; 0; 0; 10^-1; 10^-2];
auxR = [10; 0; 0; 1; 10^-1; 0];
auxC = [10^-4; 10^-4; 10^-5; 0; 0; 0];

%   valores correspondes aos componentes passivos do circuito,
%   para o respetivo grupo
L = d * auxL;
R = d * auxR;
C = d * auxC;
G = 5;

%---------------------------Exercício 1----------------------------------

%    alínea A
%    ex1a( G, L, R, C );

%   alínea B
%    ex1b(L, C);

%   alínea D
ex4a(R, G, L, C);
