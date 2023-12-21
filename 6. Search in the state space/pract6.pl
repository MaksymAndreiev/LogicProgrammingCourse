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

% предикат пошуку у глибину
dpth([Finish|Tail],Finish,[Finish|Tail]). % якщо поточна вершина співпадає з кінцевою, то шлях знайдений
dpth(TempWay,Finish,Way):-
    prolong(TempWay,NewWay), % намагаємося зробити крок
    dpth(NewWay,Finish,Way). % продовжуємо пошук уже з урахуванням зробленого кроку

% допоміжний предикат для зручності користувача
search_dpth(Start,Finish):-
    dpth([Start],Finish,Way), % викликаємо пошук у глибину, вважаючи, що шлях складається лише з початкової вершини
    show_answer(Way). % виводимо шлях на екран у наочному вигляді

% для виведення шляху на екран
show_answer([_]):-!.
show_answer([A,B|Tail]):-
    show_answer([B|Tail]),nl,write(B),write(' -> '),write(A).
