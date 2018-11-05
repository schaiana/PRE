N = 100000;

%Operação principal
for ii= 1 : N
  X(ii) = rand(); 
  Y(ii) = X(ii)*rand();
end;  


x = linspace(-0.5, 1.2, 100); % Criando bins para x e y
y = linspace(0, 1, 100);

freq_X = hist(X,x); % Calculando a freq de X e Y
freq_Y = hist(Y,y);

pdf_X_prat = freq_X/trapz(x, freq_X); %Calculando a pdf

pdf_Y_prat = freq_Y/trapz(y, freq_Y);

%(a) Plote o diagrama de dispersão (scatter plot) de (X, Y ), utilizando as 5000 primeiras
%realizações do experimento.
  figure(1), clf
    hold on
    title('Diagrama de dispersão de X,Y');
    scatter(X(1:5000), Y(1:5000));
    grid on

%(b) Plote, em uma mesma figura, a PDF marginal teórica e prática de X.
  figure(2), clf
    hold on
    title('PDF marginal teórica e prática de X');
    plot(x, pdf_X_prat, 'y');
    plot(x,(x <=1)&(x > 0),'b');
    axis ([-0.1 1.1 -0.1 1.1])
    grid on

%(c) Plote, em uma mesma figura, a PDF marginal teórica e prática de Y .
  figure(3), clf
    hold on
    title('PDF marginal teórica e prática de Y'); 
    plot(y, pdf_Y_prat, 'y')
    plot(y,-log(abs(y)).*((y > 0)&(y<1)),'b');
    grid on

%(d) Verifique os resultados das Questões 1(f) a 1(h).
  %1(f) Determine a probabilidade de X ser menor que 1/2. Determine a probabilidade de
  %Y ser menor que 1/2.
    printf('Pr[X < 0.5] = %f\n', sum(X < 0.5) / N);
    printf('Pr[Y < 0.5] = %f\n', sum(Y < 0.5) / N);
  %1(h) Calcule a probabilidade de que um triângulo possa ser formado com as três peças
  %obtidas.
    printf('Prob. de um triangulo = %f\n', sum((X > 0.5)&(Y> X-0.5)&(Y<0.5)) / N);
    printf('Media X = %f, Media Y = %f\n', mean(X),mean(Y));