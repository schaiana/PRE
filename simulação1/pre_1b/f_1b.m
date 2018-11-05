function K = f_1b(t, g, n)
    K = 0; %n�mero de bolas verdes sorteadas
    
    while n > 0
        sorteado = randi([1 t]); %sorteia um n�mero de 1 at� o total de bolas
        if sorteado <= g         %se o n�mero sorteado for menor que g, � uma bola verde
            K = K + 1;
            g = g - 1; %sem reposi��o, ao sortear uma verde, tira ela das possibilidades           
        end
        t = t - 1; %diminui uma bola do total
        n = n - 1;
    end	
end