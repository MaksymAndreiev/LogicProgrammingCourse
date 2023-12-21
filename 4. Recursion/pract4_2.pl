% Перевірка, чи число є негативним
is_negative(X) :-
    X < 0.

% Обчислення середнього арифметичного та кількості негативних елементів списку
average_negatives(List, Average, Count) :-
    include(is_negative, List, Negatives), % Відфільтрувати лише негативні елементи
    sum_list(Negatives, Sum), % Обчислити суму негативних елементів
    length(Negatives, Count), % Обчислити кількість негативних елементів
    (Count =:= 0 -> Average is 0 ; Average is Sum / Count). % Обчислити середнє арифметичне, якщо є негативні елементи
