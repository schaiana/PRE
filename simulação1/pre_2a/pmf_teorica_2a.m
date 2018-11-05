function valor_teor = pmf_teorica_2a(n, k, g, t)
    r = t-g;
    p = g/t;
    l = n-k;
    q = r/t;
    
    valor_teor = f_nk(n-1, k-1).*(p.^(k)).*(q.^(l));
end