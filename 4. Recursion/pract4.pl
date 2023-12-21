% Функція для обчислення факторіала
factorial(0, 1).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Result1),
    Result is N * Result1.

% Функція для обчислення члену функціонального ряду
series_term(I, X, Term) :-
    I>=0,
    log(3, Ln3),
    factorial(I, IFact),
    Power is X ** I,
    Term is (Ln3 ** I / IFact) * Power.

% Функція для обчислення суми n членів функціонального ряду
series_sum(0, _, 0).
series_sum(N, X, Sum) :-
    N >= 0,
    N1 is N - 1,
    series_term(N, X, Term),
    series_sum(N1, X, Sum1),
    Sum is Sum1 + Term.
