% ���� �����, �� �������� ����� �����

m(a, b, 3).
m(a, c, 10).
m(a, e, 5).
m(b, d, 10).
m(e, b, 5).
m(c, c, 1).
m(c, d, 15).
m(c, f, 7).
m(d, d, 1).
m(d, f, 7).

% ������� ������ ����� move
move(A,B,C):-m(A,B,C); m(B,A,C).

% ��� ���������� ����� �� ���� ����
prolong(Length:[Temp|Tail],NewLength:[New,Temp|Tail]):-
    move(Temp,New,C),not(member(New,[Temp|Tail])),
    NewLength is Length+C.

% ������� ��� ������� ����� �� ������� ����
placeone(Length:Way,[LengthH:WayH|Tail],[Length:Way,LengthH:WayH|Tail]):-
    Length=<LengthH,!.
placeone(LengthWay,[LengthHWayH|Tail],[LengthHWayH|NewTail]):-
    placeone(LengthWay,Tail,NewTail).
placeone(LengthWay,[],[LengthWay]).

% ������� ��� ������������ ������ �� �������� �����
place([],SortedWays,SortedWays).%���� ������ ������, �� �������� ������ � ���� ��������
place([Way|Tail],PrevWays,SortedWays):-
� � placeone(Way,PrevWays,PrevWays1),%������ ���������� �� ������� ���� ������ ����
� � place(Tail,PrevWays1,SortedWays).%� ���������� ����������� �����

% ��������� �������� ��� �������� �����������
search_bst(Start,Finish):-
    bst([0:[Start]],Finish,Length:Way),
    show_answer(Way),nl,write('Length of way: '), write(Length).

% ������� ��� ������ ������������ �����
bst([Length:[Finish|Tail]|_],Finish,Length:[Finish|Tail]).
bst([TempWay|OtherWays],Finish,Way):-
� � findall(W, prolong(TempWay,W),Ways),
� � place(Ways,OtherWays,NewWays),%��� ��������� �� ������ � ������
� � %��� ����� �� ��������� � �����, � �������������� �� �������� �����
� � bst(NewWays,Finish,Way).