% оголошення списку
shinkansen_list(['Nozomi', 'Hayabusa', 'Komachi', 'Sakura', 'Tsubame', 'Asama']).

% Приклад 1: Поділити список на голову і хвіст
list_head_tail([], _, []).
list_head_tail([Head|Tail], Head, Tail).

% Приклад 2: Об'єднання і розділення списків
append([], List, List).
append([X|L1], List2, [X|L3]) :- append(L1, List2, L3).

% Приклад 3: Визначення довжини списку
list_length([], 0).
list_length([_|Tail], N) :-
    list_length(Tail, N1),
    N is N1 + 1.
