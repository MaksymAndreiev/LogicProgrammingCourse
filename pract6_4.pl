% �����, �� ����������� ���������� �����
point(a,1,5).
point(b,3,5).
point(c,0,2).
point(d,4,2).
point(e,2,3).
point(f,2,0).

% �����, �� ����������� ����� �����
r(a,c).
r(c,b).
r(b,g).
r(g,f).
r(g,d).
r(f,d).
r(e,d).
r(a,e).

% �������, �� ��������, �� ���� ������ �� ����� �������
road(A,B):-r(A,B);r(B,A).

% �������, �� ��������� �������� ������� � �����
prolong([Temp|Tail],[New,Temp|Tail]):-
    road(Temp,New),not(member(New,[Temp|Tail])).

% �������, �� ��������� ������� �� ����� �������
wt([TempPoint|_],FinishPoint,L):-
    point(TempPoint,XA,YA),point(FinishPoint,XB,YB),
    Sum is (XA-XB)*(XA-XB)+(YA-YB)*(YA-YB), L is sqrt(Sum).

%����������� ��������� ������� ������ ������
placeone(Way,[WayH|Tail],Finish,[Way,WayH|Tail]):-
    wt(Way,Finish,A),wt(WayH,Finish,B),A=<B,!.
placeone(Way,[WayH|Tail],Finish,[WayH|NewTail]):-
    placeone(Way,Tail,Finish,NewTail).
placeone(Way,[],_,[Way]).

% ������� ��� ������������ ������ �� �������� �����
place([],SortedWays,_,SortedWays).%���� ������ ������, �� �������� ������ � ���� ��������
place([Way|Tail],PrevWays, Finish,SortedWays):-
� � placeone(Way,PrevWays,Finish,PrevWays1),%������ ���������� �� ������� ���� ������ ����
� � place(Tail,PrevWays1,Finish, SortedWays).%� ���������� ����������� �����

% �������, �� ��������� ����������� ���� �� ����� �������
search_grd(Start,Finish) :-
   % ����������� � ������ 0 �� ������ ������ � ��������� �����
    grd([[Start]],Finish,Way),show_answer(Way),
    % �������� ��������� ����������� ���� �� ������� �����
    show_answer(Way).

grd([[Finish|Tail]|_],Finish,[Finish|Tail]).
grd([TempWay|OtherWays],Finish,Way):-
    findall(W,prolong(TempWay,W),Ways),
    place(Ways,OtherWays,Finish,NewWays),
    grd(NewWays,Finish,Way).

% ��� ��������� ����� �� �����
show_answer([_]):-!.
show_answer([A,B|Tail]):-
    show_answer([B|Tail]),nl,write(B),write(' -> '),write(A).
