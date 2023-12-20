% факти, які відображають координати точок
point(a,1,5).
point(b,3,5).
point(c,0,2).
point(d,4,2).
point(e,2,3).
point(f,2,0).

% факти, які відображають ребра графа
r(a,c).
r(c,b).
r(b,g).
r(g,f).
r(g,d).
r(f,d).
r(e,d).
r(a,e).

% правило, що перевіряє, чи існує дорога між двома точками
road(A,B):-r(A,B);r(B,A).

% правило, що знаходить наступну вершину у шляху
prolong([Temp|Tail],[New,Temp|Tail]):-
    road(Temp,New),not(member(New,[Temp|Tail])).

% правило, що знаходить відстань між двома точками
wt([TempPoint|_],FinishPoint,L):-
    point(TempPoint,XA,YA),point(FinishPoint,XB,YB),
    Sum is (XA-XB)*(XA-XB)+(YA-YB)*(YA-YB), L is sqrt(Sum).

%порівнюється евристики кінцевих вершин шляхів
placeone(Way,[WayH|Tail],Finish,[Way,WayH|Tail]):-
    wt(Way,Finish,A),wt(WayH,Finish,B),A=<B,!.
placeone(Way,[WayH|Tail],Finish,[WayH|NewTail]):-
    placeone(Way,Tail,Finish,NewTail).
placeone(Way,[],_,[Way]).

% правило для розставляння шляхів по потрібним місцям
place([],SortedWays,_,SortedWays).%якщо список пустий, то поточний список і буде відповіддю
place([Way|Tail],PrevWays, Finish,SortedWays):-
    placeone(Way,PrevWays,Finish,PrevWays1),%інакше вставляємо на потрібне місце перший шлях
    place(Tail,PrevWays1,Finish, SortedWays).%і продовжуємо розставляти решту

% правило, що знаходить найкоротший шлях між двома точками
search_grd(Start,Finish) :-
   % розпочинаємо з відстані 0 та списку шляхів з початкової точки
    grd([[Start]],Finish,Way),show_answer(Way),
    % виводимо знайдений найкоротший шлях та довжину шляху
    show_answer(Way).

grd([[Finish|Tail]|_],Finish,[Finish|Tail]).
grd([TempWay|OtherWays],Finish,Way):-
    findall(W,prolong(TempWay,W),Ways),
    place(Ways,OtherWays,Finish,NewWays),
    grd(NewWays,Finish,Way).

% для виведення шляху на екран
show_answer([_]):-!.
show_answer([A,B|Tail]):-
    show_answer([B|Tail]),nl,write(B),write(' -> '),write(A).
