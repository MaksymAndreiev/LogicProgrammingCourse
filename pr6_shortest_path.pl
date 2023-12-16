m(a,b,5).
m(a,c,5).
m(a,e,12).
m(a,f,10).
m(b,d,5).
m(b,e,3).
m(c,f,3).
m(d,e,5).
m(e,f,5).
move(A,B,C):-m(A,B,C).

prolong(Length:[Temp|Tail],NewLength:[New,Temp|Tail]):-
    move(Temp,New,C),not(member(New,[Temp|Tail])),
    NewLength is Length+C.

placeone(Length:Way,[LengthH:WayH|Tail],[Length:Way,LengthH:WayH|Tail]):-
    Length=<LengthH,!.

placeone(LengthWay,[LengthHWayH|Tail],[LengthHWayH|NewTail]):-
    placeone(LengthWay,Tail,NewTail).

placeone(LengthWay,[],[LengthWay]).

place([],SortedWays,SortedWays).
place([Way|Tail],PrevWays,SortedWays):-
    placeone(Way,PrevWays,PrevWays1),
    place(Tail,PrevWays1,SortedWays).

bst([Length:[Finish|Tail]|_],Finish,Length:[Finish|Tail]).
bst([TempWay|OtherWays],Finish,Way):-
    findall(W,prolong(TempWay,W),Ways),
    place(Ways,OtherWays,NewWays),
    bst(NewWays,Finish,Way).

search_bst(Start,Finish):-
    bst([0:[Start]],Finish,Length:Way),
    show_answer(Way),nl,write('Length of way: '),write(Length).

show_answer([_]):-!.
show_answer([A,B|Tail]):-
    show_answer([B|Tail]),nl,write(B),write(' -> '),write(A).
