function K = f_1b(t, g, n)
    K = 0; %número de bolas verdes sorteadas
    
    while n > 0
        sorteado = randi([1 t]); %sorteia um número de 1 até o total de bolas
        if sorteado <= g         %se o número sorteado for menor que g, é uma bola verde
            K = K + 1;
            g = g - 1; %sem reposição, ao sortear uma verde, tira ela das possibilidades           
        end
        t = t - 1; %diminui uma bola do total
        n = n - 1;
    end	
end