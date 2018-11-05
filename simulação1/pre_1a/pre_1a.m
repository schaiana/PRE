%0: bola vermelha (vermelha)
%1: bola verde (sucesso)
clc;
clear all;
close all;

N = 10000; 					%n�mero de experimentos						
i = 1;                      %vari�vel auxiliar do while

t = 100;                    %n�mero de total de bolas
g = 20;                     %n�mero de bolas verdes
n = 95;                     %n�mero de bolas retiradas
r = t-g;

r_pratico = zeros(1,N);    %cria array para armazenar resultados

%loop que realiza N experimentos
while i <= N
    r_pratico(1, i) = f_1a(t, g, n);    
    i = i +1;  
end

x = 0:n; 						
freq = hist(r_pratico, x); 		%Histograma de r_pratico
pmf_prat = freq / N;       		%PMF pr�tica a partir do histograma

r_teorico = pmf_teorica_1a(n, x, g, t);

%Plots
figure, hold on, grid on
bar(x, pmf_prat, 'y')
stem(x, r_teorico, 'b')
xlabel('N�mero de bolas verdes')
ylabel('Probabilidade de sucesso')

p = g/t;
q = 1 - p;

media_prat = mean(r_pratico);
media_teorica = n*p;
var_pratica = var(r_pratico);
var_teorica = n*p*q;

disp(['M�dia pr�tica: ', num2str(media_prat)]);
disp(['M�dia te�rica: ', num2str(media_teorica)]);
disp(['Vari�ncia pr�tica: ', num2str(var_pratica)]);
disp(['Vari�ncia te�rica: ', num2str(var_teorica)]);