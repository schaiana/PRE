function valor_nk = f_nk(n, k)
        valor_nk = factorial(n)./(factorial(k).*factorial(n-k)) .* ((0 <= k) & (k <= n)); 
end