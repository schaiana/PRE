function K = f_1a(t, g, n)
    K = 0; %número de bolas verdes sorteadas
    
    while n > 0
        sorteado = randi([1 t]); %sorteia um número de 1 até o total de bolas
        if sorteado <= g         %se o número sorteado for menor que g, é uma bola verde
            K = K + 1;
        end
        n = n - 1;
    end	
end