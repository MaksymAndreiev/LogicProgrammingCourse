:-use_module(library(pce)).
:- dynamic component/3.


% ��������� ������ �����
add_component(Type, Name, Characteristics) :-
    \+ component(_, Name, _), % �������� �� ������������
    assert(component(Type, Name, Characteristics)).

% ���� ������
update_component(Name, 1) :-
    new(D21,dialog('������ ���������:')),
    send(D21,append,new(L,label)),
    send(L,append,'���� ����'),
    send(D21,append,new(S,text_item('����� ��� ����������:'))),
    send(D21,append,button('������',message(@prolog,
                                             update_type,Name,S?selection))),
    send(D21,append,button('���������',message(D21,destroy))),
    send(D21,open).

update_component(Name, 2) :-
    new(D22,dialog('������ ���������:')),
    send(D22,append,new(L,label)),
    send(L,append,'���� �����'),
    send(D22,append,new(S,text_item('���� �����:'))),
    send(D22,append,button('������',message(@prolog,
                                             update_name,Name,S?selection))),
    send(D22,append,button('���������',message(D22,destroy))),
    send(D22,open).

update_component(Name, 3) :-
    new(D2,dialog('������ ���������:')),
    send(D2,append,new(L,label)),
    send(L,append,'���� �������������'),
    send(D2,append,new(S,text_item('��� ��������������:'))),
    send(D2,append,button('������',message(@prolog,
                                             update_characteristics,Name,S?selection))),
    send(D2,append,button('���������',message(D2,destroy))),
    send(D2,open).

update_component(_, 4) :-
    new(M,dialog('��������� ����')),
    send(M,append,new(L,label)),
    send(L,append, 'ͳ���� �� ������.'),
    send(M,open).

update_type(Name, NewType):-
    component(_, Name, Characteristics),
    new(M,dialog('��������� ����')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(NewType, Name, Characteristics)),
        send(L,append, '����� ������.')
    ;   send(L,append, format('��������� � ��\'�� ~w �� ��������.~n', [Name]))
    ),
    send(M,open).

update_name(Name, NewName):-
    component(Type, Name, Characteristics),
    new(M,dialog('��������� ����')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, NewName, Characteristics)),
        send(L,append, '����� ������.')
    ;   send(L,append, format('��������� � ��\'�� ~w �� ��������.~n', [Name]))
    ),
    send(M,open).

update_characteristics(Name, NewCharacteristics):-
    component(Type, Name, _),
    new(M,dialog('��������� ����')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, Name, NewCharacteristics)),
         send(L,append, '����� ������.')
    ;   send(L,append, format('��������� � ��\'�� ~w �� ��������.~n', [Name]))
    ),
    send(M,open).

% ��������� ������
remove_component(Name) :-
    retract(component(_, Name, _)).


% ����
menu :-
    new(D, dialog('���������� ����\'�����')),
    send(D,append,new(L1,label)),%��������� �����������
    send(L1,append,'���� ����� � ������������ ��.'),
    send(D,append,new(L2,text)),
    send(L2,append,'�������� 䳿 � ����� �����:'),
    send(D,append,new(Act,menu('ĳ�:',cycle))),%���� ������ ��
    send_list(Act,append,[' ','������ ����� �����',
                          '������ �����',
                          '�������� �����',
                          '����������� �� ����������']),
    send(D,append,button('�������',message(@prolog,work_item,Act?selection))),
    send(D,append,button(ok,message(D,destroy))),
    send(D,open).
    % process_choice(Choice).

work_item(Item):-((Item='������ ����� �����',X is 1);
                 (Item='������ �����',X is 2);
                 (Item='�������� �����',X is 3);
                 (Item='����������� �� ����������',X is 4)),
    process(X).

process(X):-retractall(component),%��������� ���� �����
    reconsult('components_db.pl'),
    dynamic(component/3),
    process_choice(X).%������� ����� ��������� X


% ������� ������� ����� � ����
process_choice(1) :-
    new(D2,dialog('������ ����� ���������:')),
    send(D2,append,new(L,label)),
    send(L,append,'������ �����:'),
    send(D2,append,new(S1,text_item('���:'))),
    send(D2,append,new(S2,text_item('�����:'))),
    send(D2,append,new(S3,text_item('��������������:'))),
    send(D2,append,button('������',message(@prolog,
                                             add_record,S1?selection,
                                             S2?selection,
                                             S3?selection))),
    send(D2,append,button('���������',message(D2,destroy))),
    send(D2,open).

process_choice(2) :-
    new(D3,dialog('������ ���������:')),
    send(D3,append,new(L,label)),
    send(L,append,'����� ���������� ��� ����: '),
    send(D3,append,new(S1,text_item('�����:'))),
    send(D3,append,new(Act,menu(action,cycle))),%���� ������ ��
    send_list(Act,append,[' ','��� ����������',
                          '����� ����������',
                          '��������������',
                          'ͳ���� �� �����']),
    send(D3,append,button('������', message(@prolog,
                                             change_item, S1?selection, Act?selection))),
    send(D3,append,button('���������',message(D3,destroy))),
    send(D3,open).

process_choice(3) :-
    new(D4,dialog('�������� ���������:')),
    send(D4,append,new(L,label)),
    send(L,append,'����� ���������� ��� ���������'),
    send(D4,append,new(S1,text_item('�����:'))),
    send(D4,append,button('�������� �����',message(@prolog,
                                             del_record,S1?selection))),
    send(D4,append,button('���������',message(D4,destroy))),
    send(D4,open).

process_choice(4) :-
    new(D1,dialog('���������� ��� ������������.')),
    send(D1,append,new(L,label)),
    send(L,append,'���������� ��� �� ����������. '),
    send(D1,append,new(Lb,list_browser)),%���� ������ ������
    send(Lb,size,size(100, 20)),%����� ����
    send(Lb,alignment,center),
    send_list(Lb,append,['���������� \n ���\t\t|\t�����\t|\t��������������']),%��������� ������ �� ����
    component(Type, Name, Characteristics),
    string_concat(Type,"\t\t|\t",S1), string_concat(Name,"\t|\t",S2),
    string_concat(S1,S2,S3),string_concat(S3,Characteristics,S4),
    send_list(Lb,append, [S4]),
    send(D1,append,button('���������',message(D1,destroy))),
    send(D1,open),fail.

del_record(Name):-
    remove_component(Name),
    new(M,dialog('��������� ���������')),
    send(M,append,new(L,label)),
    send(L,append,'��������� ��������.'),
    send(M,open).

change_item(Name, Item):-
    ((Item='��� ����������',X is 1);
                 (Item='����� ����������',X is 2);
                 (Item='��������������',X is 3);
                 (Item='ͳ���� �� �����',X is 4)),
    update_component(Name, X).

add_record(Type,Name,Characteristics):-
    add_component(Type,Name,Characteristics),
    new(M,dialog('��������� ���������')),
    send(M,append,new(L,label)),
    send(L,append,'����� ��������� ������!'),
    send(M,open).






