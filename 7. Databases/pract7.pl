:- dynamic component/3.

% ���� �����
% ����� ����� ������ ����� ���������� �� ���� ��������������
component('��������', 'Intel Core i5', '������� �������: 3.2 ���, ʳ������ ����: 4').
component('����������� �����', 'Asus Prime B450M', 'ֳ��: 80 ������, ʳ������ ���\'��� ���������� ���\'��: 4').
component('���������� ���\'���', 'Kingston HyperX Fury', '��\'��: 16 ��, �������: 2.0 ���').
component('�����������', 'Samsung 970 EVO', '��\'��: 500 ��, �������� �������/������: 3.4/3.3 ��/�').
component('���������', 'Nvidia GeForce GTX 1660', '��\'�� ���\'��: 6 ��, ʳ������ �����������: 1').
component('��������', 'Corsair CX450M', '����������: 450 ��, ʳ������ ���\'��� ��������: 1').
component('������', 'Aerocool Cylon Mini', 'ֳ��: 40 ������, ʳ������ �����������: 1').

% ��������� ������ �����
add_component(Type, Name, Characteristics) :-
    \+ component(_, Name, _), % �������� �� ������������
    assert(component(Type, Name, Characteristics)).

% ���� ������
update_component(Name, 1) :-
    component(_, Name, Characteristics),
    writeln('����� ��� ����������: '),
    read(NewType),
    (   retract(component(_, Name, _))
    ->  assert(component(NewType, Name, Characteristics)),
        write('����� ������.'), nl
    ;   format('��������� � ��\'�� ~w �� ��������.~n', [Name])
    ).

update_component(Name, 2) :-
    component(Type, Name, Characteristics),
    writeln('���� �����: '),
    read(NewName),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, NewName, Characteristics)),
        write('����� ������.'), nl
    ;   format('��������� � ��\'�� ~w �� ��������.~n', [Name])
    ).

update_component(Name, 3) :-
    component(Type, Name, _),
    writeln('��� ��������������: '),
    read(NewCharacteristics),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, Name, NewCharacteristics)),
        write('����� ������.'), nl
    ;   format('��������� � ��\'�� ~w �� ��������.~n', [Name])
    ).

update_component(_, 4) :-
    write('ͳ���� �� ������.'), nl.

% ��������� ������
remove_component(Name) :-
    retract(component(_, Name, _)).

% ������� �� ����������
list_components :-
    component(Type, Name, Characteristics),
    write('���: '), write(Type), nl,
    write('�����: '), write(Name), nl,
    writeln('��������������: '), write(Characteristics), nl,
    nl,
    fail.

list_components.

% ����
menu :-
    write('--------------------------'), nl,
    write('1. ������ ����� �����'), nl,
    write('2. ������ �����'), nl,
    write('3. �������� �����'), nl,
    write('4. ����������� �� ����������'), nl,
    write('5. �����'), nl,
    read(Choice),
    process_choice(Choice).

% ������� ������� ����� � ����
process_choice(1) :-
    writeln('��� ����������: '),
    read(Type),
    write('����� '),
    write(Type),
    writeln(' : '),
    read(Name),
    writeln('��������������: '),
    read(Characteristics),
    add_component(Type, Name, Characteristics),
    menu.

process_choice(2) :-
    write('����� ���������� ��� ����: '), nl,
    read(Name),
    write('�������, �� ������: '), nl,
    write('1. ��� ����������'), nl,
    write('2. ����� ����������'), nl,
    write('3. ��������������'), nl,
    write('4. ͳ���� �� �����'), nl,
    read(Choice),
    update_component(Name, Choice),
    menu.

process_choice(3) :-
    writeln('����� ���������� ��� ���������: '),
    read(Name),
    remove_component(Name),
    menu.

process_choice(4) :-
    list_components,
    menu.

process_choice(5) :-
    write('�� ���������!'),
    nl,
    halt.














