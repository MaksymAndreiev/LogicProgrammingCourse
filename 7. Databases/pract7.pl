:- dynamic component/3.

% База даних
% Кожен рядок містить назву компонента та його характеристики
component('процесор', 'Intel Core i5', 'Тактова частота: 3.2 ГГц, Кількість ядер: 4').
component('материнська плата', 'Asus Prime B450M', 'Ціна: 80 доларів, Кількість роз\'ємів оперативної пам\'яті: 4').
component('оперативна пам\'ять', 'Kingston HyperX Fury', 'Об\'єм: 16 ГБ, Частота: 2.0 ГГц').
component('накопичувач', 'Samsung 970 EVO', 'Об\'єм: 500 ГБ, Швидкість читання/запису: 3.4/3.3 Гб/с').
component('відеокарта', 'Nvidia GeForce GTX 1660', 'Об\'єм пам\'яті: 6 ГБ, Кількість вентиляторів: 1').
component('живлення', 'Corsair CX450M', 'Потужність: 450 Вт, Кількість роз\'ємів живлення: 1').
component('корпус', 'Aerocool Cylon Mini', 'Ціна: 40 доларів, Кількість вентиляторів: 1').

% Додавання нового рядку
add_component(Type, Name, Characteristics) :-
    \+ component(_, Name, _), % перевірка на унікальність
    assert(component(Type, Name, Characteristics)).

% Зміна запису
update_component(Name, 1) :-
    component(_, Name, Characteristics),
    writeln('Новий тип компонента: '),
    read(NewType),
    (   retract(component(_, Name, _))
    ->  assert(component(NewType, Name, Characteristics)),
        write('Запис змінено.'), nl
    ;   format('Компонент з ім\'ям ~w не знайдено.~n', [Name])
    ).

update_component(Name, 2) :-
    component(Type, Name, Characteristics),
    writeln('Нова назва: '),
    read(NewName),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, NewName, Characteristics)),
        write('Запис змінено.'), nl
    ;   format('Компонент з ім\'ям ~w не знайдено.~n', [Name])
    ).

update_component(Name, 3) :-
    component(Type, Name, _),
    writeln('Нові характеристики: '),
    read(NewCharacteristics),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, Name, NewCharacteristics)),
        write('Запис змінено.'), nl
    ;   format('Компонент з ім\'ям ~w не знайдено.~n', [Name])
    ).

update_component(_, 4) :-
    write('Нічого не міняємо.'), nl.

% Видалення запису
remove_component(Name) :-
    retract(component(_, Name, _)).

% Вивести всі компоненти
list_components :-
    component(Type, Name, Characteristics),
    write('Тип: '), write(Type), nl,
    write('Назва: '), write(Name), nl,
    writeln('Характеристики: '), write(Characteristics), nl,
    nl,
    fail.

list_components.

% Меню
menu :-
    write('--------------------------'), nl,
    write('1. Додати новий рядок'), nl,
    write('2. Змінити запис'), nl,
    write('3. Видалити запис'), nl,
    write('4. Переглянути всі компоненти'), nl,
    write('5. Вихід'), nl,
    read(Choice),
    process_choice(Choice).

% Обробка вибраної опції з меню
process_choice(1) :-
    writeln('Тип компонента: '),
    read(Type),
    write('Назва '),
    write(Type),
    writeln(' : '),
    read(Name),
    writeln('Характеристики: '),
    read(Characteristics),
    add_component(Type, Name, Characteristics),
    menu.

process_choice(2) :-
    write('Назва компоненту для зміни: '), nl,
    read(Name),
    write('Виберіть, що змінити: '), nl,
    write('1. Тип компонента'), nl,
    write('2. Назву компонента'), nl,
    write('3. Характеристики'), nl,
    write('4. Нічого не міняти'), nl,
    read(Choice),
    update_component(Name, Choice),
    menu.

process_choice(3) :-
    writeln('Назва компоненту для видалення: '),
    read(Name),
    remove_component(Name),
    menu.

process_choice(4) :-
    list_components,
    menu.

process_choice(5) :-
    write('До побачення!'),
    nl,
    halt.















