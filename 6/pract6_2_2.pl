% ���� �����, �� �������� ����� �����

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

% ������� ������ ����� move
move(A,B):-m(A,B);m(B,A). % ������� ���� ������������

% ��� ���������� ����� �� ���� ����
prolong([Temp|Tail],[New,Temp|Tail]):-
    move(Temp,New),not(member(New,[Temp|Tail])).

int(1).
int(N):-int(M),N is M+1.

id([Finish|Tail],Finish,[Finish|Tail],0).
id(TempWay,Finish,Way,N):-N>0,
� � prolong(TempWay,NewWay),N1 is N-1,
� � id(NewWay,Finish,Way,N1).

% �������, ��� ��������� ����������� ���� �� ����� �������
% ���� � ��������� ����� ����� ������� ������� � �������,
% �� ����� ���� � ��������
bdth([[Finish|Tail]|_], Finish, [Finish|Tail]).
bdth([TempWay|OtherWays], Finish, Way) :-
    findall(W, prolong(TempWay,W), Ways), % ������ �� �����, �� ����� ����� ������� ���� � ��������� �����
    append(OtherWays, Ways, NewWays), % ������ �� ����� � ����� ������ ������
    bdth(NewWays, Finish, Way). % ���������� �����

% �������, ��� ������� ����� ������������ ����� �� ����� �������
search_bdth(Start,Finish) :-
    bdth([[Start]], Finish, Way), % ������ ������ ���������� � ������ �����, ���� ������ ��������� �������
    show_answer(Way).

% �������, ��� �������� ��������� ����
show_answer([_]):-!.
show_answer([A,B|Tail]) :-
show_answer([B|Tail]), nl, write(B), write(' -> '), write(A).
