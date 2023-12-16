% набір фактів, що відображає ребра графу

m(a, b).
m(a, c).
m(a, e).
m(b, d).
m(e, b).
m(c, c).
m(c, d).
m(c, f).
m(d, d).
m(d, f).

% правило одного кроку move
move(A,B):-m(A,B);m(B,A). % оскільки граф неорієнтований

% для подовження шляху на один крок
prolong([Temp|Tail],[New,Temp|Tail]):-
    move(Temp,New),not(member(New,[Temp|Tail])).

int(1).
int(N):-int(M),N is M+1.

id([Finish|Tail],Finish,[Finish|Tail],0).
id(TempWay,Finish,Way,N):-N>0,
    prolong(TempWay,NewWay),N1 is N-1,
    id(NewWay,Finish,Way,N1).

% правило, яке знаходить найкоротший шлях між двома вузлами
% якщо у поточного шляха перша вершина співпадає з кінцевою,
% то даний шлях є відповіддю
bdth([[Finish|Tail]|_], Finish, [Finish|Tail]).
bdth([TempWay|OtherWays], Finish, Way) :-
    findall(W, prolong(TempWay,W), Ways), % знайти всі шляхи, за якими можна зробити крок з поточного стану
    append(OtherWays, Ways, NewWays), % додати ці шляхи в кінець списку шляхів
    bdth(NewWays, Finish, Way). % продовжуємо пошук

% правило, яке запускає пошук найкоротшого шляху між двома вузлами
search_bdth(Start,Finish) :-
    bdth([[Start]], Finish, Way), % список шляхів складається з одного шляху, який містить початкову вершину
    show_answer(Way).

% правило, яке відображає знайдений шлях
show_answer([_]):-!.
show_answer([A,B|Tail]) :-
show_answer([B|Tail]), nl, write(B), write(' -> '), write(A).
