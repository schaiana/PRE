function valor_teor = pmf_teorica_1b(n, k, g, t)
    r = t-g;
    l = n-k;
    fatorial_gk = f_nk(g, k);
    fatorial_tn = f_nk(t, n);
    fatorial_rl = f_nk(r, l);
    
    valor_teor = (fatorial_gk ./ fatorial_tn).* fatorial_rl;
end