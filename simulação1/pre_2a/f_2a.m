function n = f_2a(t, g, k)
    n = 0; %n�mero de sorteios até retirar k bolas verdes
    
    while k > 0
        sorteado = randi([1 t]); %sorteia um n�mero de 1 at� o total de bolas
        if sorteado <= g         %se o n�mero sorteado for menor que g, � uma bola verde
            k = k - 1;
        end
        n = n + 1;
    end	
end