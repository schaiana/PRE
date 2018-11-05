function valor_teor = pmf_teorica_2b(n, k, g, t)
    r = t-g;
    l = n-k;
    
    valor_teor = (f_nk(g, k-1) ./ f_nk(t, n-1)) .* ((g-k+1)./(t-n+1)) .* f_nk(r, l);
end