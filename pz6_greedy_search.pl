point(a,2,10).
point(b,7,10).
point(c,1,5).
point(d,8,5).
point(e,5,7).
point(f,5,0).
point(g,9,0).
point(h,0,0).
p(a,b).
p(a,c).
p(a,e).
p(b,d).
p(b,e).
p(c,f).
p(c,h).
p(d,f).
p(d,g).
p(e,h).
p(e,g).
p(f,h).
p(f,g).

road(A,B):-p(A,B);p(B,A).
prolong([Temp|Tail],[New,Temp|Tail]):-
    road(Temp,New),not(member(New,[Temp|Tail])).

wt([TempPoint|_],FinishPoint,L):-
    point(TempPoint,XA,YA),point(FinishPoint,XB,YB),
    Sum is (XA-XB)^2+(YA-YB)^2, L is sqrt(Sum).

place([],SortedWays,_,SortedWays).
place([Way|Tail],PrevWays,Finish,SortedWays):-
    placeone(Way,PrevWays,Finish,PrevWays1),
    place(Tail,PrevWays1,Finish,SortedWays).

placeone(Way,[WayH|Tail],Finish,[Way,WayH|Tail]):-
    wt(Way,Finish,A),wt(WayH,Finish,B),A=<B,!.

placeone(Way,[WayH|Tail],Finish,[WayH|NewTail]):-
    placeone(Way,Tail,Finish,NewTail).

placeone(Way,[],_,[Way]).

search_grd(Start,Finish):-
    grd([[Start]],Finish,Way),show_answer(Way).

grd([[Finish|Tail]|_],Finish,[Finish|Tail]).
grd([TempWay|OtherWays],Finish,Way):-
    findall(W,prolong(TempWay,W),Ways),
    place(Ways,OtherWays,Finish,NewWays),
    grd(NewWays,Finish,Way).

show_answer([_]):-!.
show_answer([A,B|Tail]):-
    show_answer([B|Tail]),nl,write(B),write(' -> '),write(A).
