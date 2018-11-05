N = 100000;

cont1=1;
cont2=1;
cont3=1;
cont4=1;

for ii= 1 : N
  X(ii) = rand(); 
  Y(ii) = X(ii)*rand();
  if ((0.05 < X(ii)) && (X(ii)< 0.15))
      Y1(cont1) = Y(ii);
      cont1++;
  end  
  if  (0.20 < X(ii)) && (X(ii) < 0.3)
    Y2(cont2) = Y(ii);
    cont2++;
  end
  if  (0.7 < X(ii)) && (X(ii)< 0.8) 
    Y3(cont3) = Y(ii);
    cont3++;
  end
  if (0.85 < X(ii)) && (X(ii)< 0.95) 
    Y4(cont4) = Y(ii);
    cont4++;
  end
end;  

y = linspace(0, 1, 100);
x = linspace(0,1,100);

freq_Y1 = hist(Y1,y);
freq_Y2 = hist(Y2,y);
freq_Y3 = hist(Y3,y);
freq_Y4 = hist(Y4,y);

pdf_Y1_prat = freq_Y1/trapz(y, freq_Y1);
pdf_Y2_prat = freq_Y2/trapz(y, freq_Y2);
pdf_Y3_prat = freq_Y3/trapz(y, freq_Y3);
pdf_Y4_prat = freq_Y4/trapz(y, freq_Y4);

figure(1), clf
title('f(x|y=0.1)');
subplot(2,2,1);
hold on;
plot(y,pdf_Y1_prat,'b');
plot(y,(1./0.1).*(y<0.1),'r');

subplot(2,2,2);
hold on;
title('f(x|y=0.25)');
plot(y,pdf_Y2_prat,'b');
plot(y,(1./0.25).*(y<0.25),'r');

subplot(2,2,3);
hold on;
title('f(x|y=0.75)');
plot(y,pdf_Y3_prat,'b');
plot(y,(1/0.8).*(y<0.8),'r');

subplot(2,2,4);
hold on;
title('f(x|y=0.9)');
plot(y,pdf_Y4_prat,'b');
plot(y,(1/0.9).*((y<0.9)&(y>0)),'r');
grid on
