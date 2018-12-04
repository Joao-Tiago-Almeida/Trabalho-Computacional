%   vari�veis constantes, n�meros mecanogr�ficos dos alunos
Rodrigo = 190185;
Rafael = 190171;
Joao = 190119;
Vasco = 190205;

%   n�mero do grupo
G = 4;

%   soma dos n�meros mecanogr�ficos dos alunos
s = Rodrigo + Rafael + Joao + Vasco;

%   Fun��o que transfroma um n�mero numa string
d = num2str(s);

%   matriz linha com o n�mero 'd'
s = [str2double(d(1)), str2double(d(2)), str2double(d(3)), str2double(d(4)), str2double(d(5)), str2double(d(6))];
d = s;

%   matrizes auxiliares para c�lculos defenidos no enunciado
auxL = [1; 0; 0; 0; 10^-1; 10^-2];
auxR = [10; 0; 0; 1; 10^-1; 0];
auxC = [10^-4; 10^-4; 10^-5; 0; 0; 0];

%   valores correspondes aos componentes passivos do circuito,
%   para o respetivo grupo
L = d * auxL;
R = d * auxR;
C = d * auxC;
G = 5;

%---------------------------Exerc�cio 1----------------------------------

%    al�nea A
%    ex1a( G, L, R, C );

%   al�nea B
%    ex1b(L, C);

%   al�nea D
ex4a(R, G, L, C);
