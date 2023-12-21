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
