function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru
  
  # calcul dimensiune set de date:
  n = size(X, 1);
  
  # initializare matrice de kernel:
  K = zeros(n, n);
  
  # parcurgere perechi de date:
  for i = 1 : n
    for j = 1 : n
      # calcul valoare utilizand functia de kernel primita:
      K(i, j) = f(X(i, :), X(j, :), f_param);
    endfor
  endfor
endfunction
