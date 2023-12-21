:-use_module(library(pce)).
:- dynamic component/3.

add_component(Type, Name, Characteristics) :-
    \+ component(_, Name, _), % перевірка на унікальність
    assert(component(Type, Name, Characteristics)).

update_component(Name, 1) :-
    new(D21,dialog('Змінити компонент:')),
    send(D21,append,new(L,label)),
    send(L,append,'Зміна типу'),
    send(D21,append,new(S,text_item('Новий тип компонента:'))),
    send(D21,append,button('Змінити',message(@prolog,
                                             update_type,Name,S?selection))),
    send(D21,append,button('Скасувати',message(D21,destroy))),
    send(D21,open).

update_component(Name, 2) :-
    new(D22,dialog('Змінити компонент:')),
    send(D22,append,new(L,label)),
    send(L,append,'Зміна назви'),
    send(D22,append,new(S,text_item('Нова назва:'))),
    send(D22,append,button('Змінити',message(@prolog,
                                             update_name,Name,S?selection))),
    send(D22,append,button('Скасувати',message(D22,destroy))),
    send(D22,open).

update_component(Name, 3) :-
    new(D2,dialog('Змінити компонент:')),
    send(D2,append,new(L,label)),
    send(L,append,'Зміна характеристик'),
    send(D2,append,new(S,text_item('Нові характеристики:'))),
    send(D2,append,button('Змінити',message(@prolog,
                                             update_characteristics,Name,S?selection))),
    send(D2,append,button('Скасувати',message(D2,destroy))),
    send(D2,open).

update_component(_, 4) :-
    new(M,dialog('Результат зміни')),
    send(M,append,new(L,label)),
    send(L,append, 'Нічого не міняємо.'),
    send(M,open).

update_type(Name, NewType):-
    component(_, Name, Characteristics),
    new(M,dialog('Результат зміни')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(NewType, Name, Characteristics)),
        send(L,append, 'Запис змінено.')
    ;   send(L,append, format('Компонент з ім\'ям ~w не знайдено.~n', [Name]))
    ),
    send(M,open).

update_name(Name, NewName):-
    component(Type, Name, Characteristics),
    new(M,dialog('Результат зміни')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, NewName, Characteristics)),
        send(L,append, 'Запис змінено.')
    ;   send(L,append, format('Компонент з ім\'ям ~w не знайдено.~n', [Name]))
    ),
    send(M,open).

update_characteristics(Name, NewCharacteristics):-
    component(Type, Name, _),
    new(M,dialog('Результат зміни')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, Name, NewCharacteristics)),
         send(L,append, 'Запис змінено.')
    ;   send(L,append, format('Компонент з ім\'ям ~w не знайдено.~n', [Name]))
    ),
    send(M,open).

remove_component(Name) :-
    retract(component(_, Name, _)).

menu :-
    new(D, dialog('Компоненти комп\'ютера')),
    send(D,append,new(L1,label)),%пояснююче повідомлення
    send(L1,append,'База даних з конфігурації ПК.'),
    send(D,append,new(L2,text)),
    send(L2,append,'Виберить дії з базою даних:'),
    send(D,append,new(Act,menu('Дія:',cycle))),%меню вибору дій
    send_list(Act,append,[' ','Додати новий рядок',
                          'Змінити запис',
                          'Видалити запис',
                          'Переглянути всі компоненти']),
    send(D,append,button('Вибрати',message(@prolog,work_item,Act?selection))),
    send(D,append,button(ok,message(D,destroy))),
    send(D,open).
    % process_choice(Choice).

work_item(Item):-((Item='Додати новий рядок',X is 1);
                 (Item='Змінити запис',X is 2);
                 (Item='Видалити запис',X is 3);
                 (Item='Переглянути всі компоненти',X is 4)),
    process(X).

process(X):-retractall(component),%завантажує базу даних
    reconsult('components_db.pl'),
    dynamic(component/3),
    process_choice(X).%викликає запит відповідний X

process_choice(1) :-
    new(D2,dialog('Додати новий компонент:')),
    send(D2,append,new(L,label)),
    send(L,append,'Введіть данні:'),
    send(D2,append,new(S1,text_item('Тип:'))),
    send(D2,append,new(S2,text_item('Назва:'))),
    send(D2,append,new(S3,text_item('Характеристики:'))),
    send(D2,append,button('Додати',message(@prolog,
                                             add_record,S1?selection,
                                             S2?selection,
                                             S3?selection))),
    send(D2,append,button('Скасувати',message(D2,destroy))),
    send(D2,open).

process_choice(2) :-
    new(D3,dialog('Змінити компонент:')),
    send(D3,append,new(L,label)),
    send(L,append,'Назва компоненту для зміни: '),
    send(D3,append,new(S1,text_item('Назва:'))),
    send(D3,append,new(Act,menu(action,cycle))),%меню вибору дій
    send_list(Act,append,[' ','Тип компонента',
                          'Назву компонента',
                          'Характеристики',
                          'Нічого не міняти']),
    send(D3,append,button('Змінити', message(@prolog,
                                             change_item, S1?selection, Act?selection))),
    send(D3,append,button('Скасувати',message(D3,destroy))),
    send(D3,open).

process_choice(3) :-
    new(D4,dialog('Видалити компонент:')),
    send(D4,append,new(L,label)),
    send(L,append,'Назва компоненту для видалення'),
    send(D4,append,new(S1,text_item('Назва:'))),
    send(D4,append,button('Видалити запис',message(@prolog,
                                             del_record,S1?selection))),
    send(D4,append,button('Скасувати',message(D4,destroy))),
    send(D4,open).

process_choice(4) :-
    new(D1,dialog('Інформація про конфігурацію.')),
    send(D1,append,new(L,label)),
    send(L,append,'Інформація про всі компоненти. '),
    send(D1,append,new(Lb,list_browser)),%поле виводу списку
    send(Lb,size,size(100, 20)),%розмір поля
    send(Lb,alignment,center),
    send_list(Lb,append,['Компоненти \n Тип\t\t|\tНазва\t|\tХарактеристики']),%додавання записів на поле
    component(Type, Name, Characteristics),
    string_concat(Type,"\t\t|\t",S1), string_concat(Name,"\t|\t",S2),
    string_concat(S1,S2,S3),string_concat(S3,Characteristics,S4),
    send_list(Lb,append, [S4]),
    send(D1,append,button('Скасувати',message(D1,destroy))),
    send(D1,open),fail.

del_record(Name):-
    remove_component(Name),
    new(M,dialog('Результат видалення')),
    send(M,append,new(L,label)),
    send(L,append,'Компонент видалено.'),
    send(M,open).

change_item(Name, Item):-
    ((Item='Тип компонента',X is 1);
                 (Item='Назву компонента',X is 2);
                 (Item='Характеристики',X is 3);
                 (Item='Нічого не міняти',X is 4)),
    update_component(Name, X).

add_record(Type,Name,Characteristics):-
    add_component(Type,Name,Characteristics),
    new(M,dialog('Результат додавання')),
    send(M,append,new(L,label)),
    send(L,append,'Новий компонент додано!'),
    send(M,open).







