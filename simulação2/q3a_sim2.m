N = 100000;

cont1=1;
cont2=1;
cont3=1;
cont4=1;

for ii= 1 : N
  X(ii) = rand(); 
  Y(ii) = X(ii)*rand();
  if (0.09 < Y(ii)) && (Y(ii) < 0.11) % y = 0.1
    X1(cont1) = X(ii);
    cont1++;
  end  
  if  (0.24 < Y(ii)) && (Y(ii)< 0.26) % y = 0.25
    X2(cont2) = X(ii);
    cont2++;
  end
  if  (0.74 < Y(ii))&& (Y(ii) < 0.76 ) % y = 0.75
    X3(cont3) = X(ii);
    cont3++;
  end
  if (0.89 < Y(ii)) && (Y(ii)< 0.91) % y = 0.9  
    X4(cont4) = X(ii);
    cont4++;
  end
end;  

x = linspace(0, 1, 100);

%Calculando a freq pra cada valor
freq_X1 = hist(X1,x);
freq_X2 = hist(X2,x);
freq_X3 = hist(X3,x);
freq_X4 = hist(X4,x);

%PDF marginal pra cada valor
pdf_X1_prat = freq_X1/trapz(x, freq_X1);
pdf_X2_prat = freq_X2/trapz(x, freq_X2);
pdf_X3_prat = freq_X3/trapz(x, freq_X3);
pdf_X4_prat = freq_X4/trapz(x, freq_X4);

figure(1), clf
title('f(x|y=0.1)');
subplot(2,2,1);
hold on
plot(x,pdf_X1_prat);
plot(x,(1./(-x.*log(abs(0.1)))).*((0.1< x)&(x < 1)));
grid on

subplot(2,2,2);
hold on
title('f(x|y=0.25)');
plot(x,pdf_X2_prat);
plot(x,(1./(-x.*log(abs(0.25)))).*((0.25< x)&(x < 1)));
grid on

subplot(2,2,3);
hold on;
title('f(x|y=0.75)');
plot(x,pdf_X3_prat);
plot(x,(1./(-x.*log(abs(0.75)))).*((0.75< x)&(x < 1)));
grid on

subplot(2,2,4);
hold on;
title('f(x|y=0.9)');
plot(x,pdf_X4_prat);
plot(x,(1./(-x.*log(abs(0.9)))).*((0.9< x)&(x < 1)));
grid on
