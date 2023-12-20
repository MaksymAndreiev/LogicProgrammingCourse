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

% �������� ������ � �������
dpth([Finish|Tail],Finish,[Finish|Tail]). % ���� ������� ������� ������� � �������, �� ���� ���������
dpth(TempWay,Finish,Way):-
    prolong(TempWay,NewWay), % ���������� ������� ����
    dpth(NewWay,Finish,Way). % ���������� ����� ��� � ����������� ���������� �����

% ��������� �������� ��� �������� �����������
search_dpth(Start,Finish):-
    dpth([Start],Finish,Way), % ��������� ����� � �������, ��������, �� ���� ���������� ���� � ��������� �������
    show_answer(Way). % �������� ���� �� ����� � �������� ������

% ��� ��������� ����� �� �����
show_answer([_]):-!.
show_answer([A,B|Tail]):-
    show_answer([B|Tail]),nl,write(B),write(' -> '),write(A).
