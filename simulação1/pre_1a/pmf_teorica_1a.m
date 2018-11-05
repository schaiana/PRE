function valor_teor = pmf_teorica_1a(n, k, g, t)
    r = t-g;
    valor_teor = f_nk(n, k).*((g/t).^(k)).*((r/t).^(n-k));
end