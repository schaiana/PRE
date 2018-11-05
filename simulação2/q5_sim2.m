N = 100000;

for ii= 1:N;
  x1(ii) = rand();
  y1(ii) = rand();

  x2(ii) = rand();
  y2(ii) = rand();

  D (ii) = sqrt((x2(ii) - x1(ii)).^2+(y2(ii) - y1(ii)).^2); %Fórmula para calcular distância
end;

bins = linspace(0,2,20);
freq_D = hist(D,bins);              

pdf_D_prat = freq_D/trapz(bins, freq_D); %Calculo da PDF marginal
cdf_prat = cumsum(freq_D) / N;           %Calculo da CDF

%(a) Plote a PDF marginal prática de D.
  figure 1
    hold on 
    title('PDF de D');
    plot (bins,pdf_D_prat, 'r');
    
    grid on
%(b) Plote a CDF marginal prática de D.
  figure 2
    hold on
    title('CDF de D');
    plot(bins,cdf_prat, 'r')
    grid on

%(c) Estime a probabilidade de D ser menor que 1.
  printf('Pr[D < 1] = %f\n', sum(D < 1) / N);

%(d) Verifique os resultados da Questão 4.
  %4(a) A média de D.
    media = sum(D)/N;
    printf('Média = %f\n', media);
  %4(b) A variância de D.
    variancia = mean(D.^2)-mean(D)^2;
    printf('Variância = %f\n', variancia);