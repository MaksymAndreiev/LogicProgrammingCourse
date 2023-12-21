% ���������� ������
shinkansen_list(['Nozomi', 'Hayabusa', 'Komachi', 'Sakura', 'Tsubame', 'Asama']).

% ������� 1: ������� ������ �� ������ � ����
list_head_tail([], _, []).
list_head_tail([Head|Tail], Head, Tail).

% ������� 2: ��'������� � ��������� ������
append([], List, List).
append([X|L1], List2, [X|L3]) :- append(L1, List2, L3).

% ������� 3: ���������� ������� ������
list_length([], 0).
list_length([_|Tail], N) :-
    list_length(Tail, N1),
    N is N1 + 1.
