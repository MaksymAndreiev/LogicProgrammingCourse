% ��������, �� ����� � ����������
is_negative(X) :-
    X < 0.

% ���������� ���������� ������������� �� ������� ���������� �������� ������
average_negatives(List, Average, Count) :-
    include(is_negative, List, Negatives), % ³������������ ���� �������� ��������
    sum_list(Negatives, Sum), % ��������� ���� ���������� ��������
    length(Negatives, Count), % ��������� ������� ���������� ��������
    (Count =:= 0 -> Average is 0 ; Average is Sum / Count). % ��������� ������ �����������, ���� � �������� ��������
