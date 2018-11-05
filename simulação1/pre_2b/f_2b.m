function n = f_2b(t, g, k)
    n = 0; %número de sorteios com k bolas verdes
    
    while k > 0
        sorteado = randi([1 t]); %sorteia um número de 1 até o total de bolas
        if sorteado <= g         %se o número sorteado for menor que g, é uma bola verde
            k = k - 1;
            g = g - 1; %sem reposição, remove a bola verde
        end
        n = n + 1;
        t = t - 1;%sem reposição, desconta um do total de bolas
    end	
end