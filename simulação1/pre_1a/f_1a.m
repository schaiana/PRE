function K = f_1a(t, g, n)
    K = 0; %n�mero de bolas verdes sorteadas
    
    while n > 0
        sorteado = randi([1 t]); %sorteia um n�mero de 1 at� o total de bolas
        if sorteado <= g         %se o n�mero sorteado for menor que g, � uma bola verde
            K = K + 1;
        end
        n = n - 1;
    end	
end