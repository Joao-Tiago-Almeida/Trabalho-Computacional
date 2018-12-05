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
t = linspace(0, 1, 101);

%   Funcao da Carga em funcao do tempo 
Q = q_eq3(R, L, C, G, t);

%---------------------------Exercicio 1----------------------------------

%  alínea 1.a
    %gerar_figura(1, t, Q, 0, .6, 0.5, 0.4, "Tempo [s]", "Carga [C]", 1, "a");

%  alínea 1.b
    %[a, b, c, d] = ex1b(L, C);
    %gerar_figura(2, a, b, 0.5, 0.6, 0.5, 0.4, "aprox_r", "erro", 1, "b");
    %gerar_figura(3, c, d, 0.4, 0.7, 0.5, 0.4, "aprox_f_r", "erro", 2, "b");
    
%---------------------------Exercicio 2----------------------------------

%  alínea 2.a
    %Tabela_2a = ex2a(R, L, C);

%  alínea 2.b
    %ex2b(R);


%---------------------------Exercicio 3----------------------------------

%  alínea 3.a
   [K, J, I, T] = ex3a(Q, t, L, R, C);
   
%gerar_tabela(T, 4, 0, 0.4, 1, .18);
%gerar_figura(5, t, J, 0, 0, 0.5, 0.4, "Tempo [s]", "J(t)", 3, "a");
%gerar_figura(6, t, J-I, 0.5, 0, 0.5, 0.4, "Tempo [s]", "J(t) - i(t)", 3, "a");
   
%  alínea 3.b
   [Qs, Qt] = ex3b(G, R, L, C, K, t);
   
 %gerar_figura (7, t, Qt, 0.2, 0.55, 0.25, 0.25, "Tempo [s]", "Qt(tk)", 3, "b");
 %gerar_figura (8, t, Qs, 0.55, 0.55, 0.25, 0.25, "Tempo [s]", "Qs(tk)", 3, "b");
 %gerar_figura (9, t, Qs - Qt, 0.2, 0.25, 0.25, 0.25, "Tempo [s]", "[Qs - Qt](tk)", 3, "b");
 %gerar_figura (10, t, (abs(Qt - Qs) ./ Qs ) .* 100, 0.1, 0.1, 0.8, 0.8, "Tempo [s]", "[|Qt - Qs|](tk)", 3, "b");
 
 %---------------------------Exercicio 4----------------------------------
   
 %  TODO, por na msm função
for n = 1:3
    [ya, t4] = ex4a(R, G, L, C, n);
    gerar_figura(11 + n - 1, t4, ya, (n-1)*0.33, 0.3, 0.33, 0.4, "legenda_x", "legenda_y", 4, "a");
end

 [yb, t5] = ex4b(R, G, L, C);
    gerar_figura(15, t5, yb, 0.2, 0.2, 0.6, 0.6, "legenda_x", "legenda_y", 4, "b");