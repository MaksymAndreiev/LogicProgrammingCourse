% Задаємо функцію Y(X)
y(X, Y) :-
  Y is exp(X) + sqrt(X).

% Обчислюємо значення функції Y(X) на інтервалі [a,b] з кроком h
compute_y(A, B, H) :-
  A =< B,
  y(A, Y),
  write('Y('), write(A), write(') = '), write(Y), nl,
  A1 is A + H,
  compute_y(A1, B, H).
