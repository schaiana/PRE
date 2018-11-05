function n = f_2b(t, g, k)
    n = 0; %n�mero de sorteios com k bolas verdes
    
    while k > 0
        sorteado = randi([1 t]); %sorteia um n�mero de 1 at� o total de bolas
        if sorteado <= g         %se o n�mero sorteado for menor que g, � uma bola verde
            k = k - 1;
            g = g - 1; %sem reposi��o, remove a bola verde
        end
        n = n + 1;
        t = t - 1;%sem reposi��o, desconta um do total de bolas
    end	
end