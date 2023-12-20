:-use_module(library(pce)).
:- dynamic component/3.

add_component(Type, Name, Characteristics) :-
    \+ component(_, Name, _), % ïåðåâ³ðêà íà óí³êàëüí³ñòü
    assert(component(Type, Name, Characteristics)).

update_component(Name, 1) :-
    new(D21,dialog('Çì³íèòè êîìïîíåíò:')),
    send(D21,append,new(L,label)),
    send(L,append,'Çì³íà òèïó'),
    send(D21,append,new(S,text_item('Íîâèé òèï êîìïîíåíòà:'))),
    send(D21,append,button('Çì³íèòè',message(@prolog,
                                             update_type,Name,S?selection))),
    send(D21,append,button('Ñêàñóâàòè',message(D21,destroy))),
    send(D21,open).

update_component(Name, 2) :-
    new(D22,dialog('Çì³íèòè êîìïîíåíò:')),
    send(D22,append,new(L,label)),
    send(L,append,'Çì³íà íàçâè'),
    send(D22,append,new(S,text_item('Íîâà íàçâà:'))),
    send(D22,append,button('Çì³íèòè',message(@prolog,
                                             update_name,Name,S?selection))),
    send(D22,append,button('Ñêàñóâàòè',message(D22,destroy))),
    send(D22,open).

update_component(Name, 3) :-
    new(D2,dialog('Çì³íèòè êîìïîíåíò:')),
    send(D2,append,new(L,label)),
    send(L,append,'Çì³íà õàðàêòåðèñòèê'),
    send(D2,append,new(S,text_item('Íîâ³ õàðàêòåðèñòèêè:'))),
    send(D2,append,button('Çì³íèòè',message(@prolog,
                                             update_characteristics,Name,S?selection))),
    send(D2,append,button('Ñêàñóâàòè',message(D2,destroy))),
    send(D2,open).

update_component(_, 4) :-
    new(M,dialog('Ðåçóëüòàò çì³íè')),
    send(M,append,new(L,label)),
    send(L,append, 'Í³÷îãî íå ì³íÿºìî.'),
    send(M,open).

update_type(Name, NewType):-
    component(_, Name, Characteristics),
    new(M,dialog('Ðåçóëüòàò çì³íè')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(NewType, Name, Characteristics)),
        send(L,append, 'Çàïèñ çì³íåíî.')
    ;   send(L,append, format('Êîìïîíåíò ç ³ì\'ÿì ~w íå çíàéäåíî.~n', [Name]))
    ),
    send(M,open).

update_name(Name, NewName):-
    component(Type, Name, Characteristics),
    new(M,dialog('Ðåçóëüòàò çì³íè')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, NewName, Characteristics)),
        send(L,append, 'Çàïèñ çì³íåíî.')
    ;   send(L,append, format('Êîìïîíåíò ç ³ì\'ÿì ~w íå çíàéäåíî.~n', [Name]))
    ),
    send(M,open).

update_characteristics(Name, NewCharacteristics):-
    component(Type, Name, _),
    new(M,dialog('Ðåçóëüòàò çì³íè')),
    send(M,append,new(L,label)),
    (   retract(component(_, Name, _))
    ->  assert(component(Type, Name, NewCharacteristics)),
         send(L,append, 'Çàïèñ çì³íåíî.')
    ;   send(L,append, format('Êîìïîíåíò ç ³ì\'ÿì ~w íå çíàéäåíî.~n', [Name]))
    ),
    send(M,open).

remove_component(Name) :-
    retract(component(_, Name, _)).

menu :-
    new(D, dialog('Êîìïîíåíòè êîìï\'þòåðà')),
    send(D,append,new(L1,label)),%ïîÿñíþþ÷å ïîâ³äîìëåííÿ
    send(L1,append,'Áàçà äàíèõ ç êîíô³ãóðàö³¿ ÏÊ.'),
    send(D,append,new(L2,text)),
    send(L2,append,'Âèáåðèòü ä³¿ ç áàçîþ äàíèõ:'),
    send(D,append,new(Act,menu('Ä³ÿ:',cycle))),%ìåíþ âèáîðó ä³é
    send_list(Act,append,[' ','Äîäàòè íîâèé ðÿäîê',
                          'Çì³íèòè çàïèñ',
                          'Âèäàëèòè çàïèñ',
                          'Ïåðåãëÿíóòè âñ³ êîìïîíåíòè']),
    send(D,append,button('Âèáðàòè',message(@prolog,work_item,Act?selection))),
    send(D,append,button(ok,message(D,destroy))),
    send(D,open).
    % process_choice(Choice).

work_item(Item):-((Item='Äîäàòè íîâèé ðÿäîê',X is 1);
                 (Item='Çì³íèòè çàïèñ',X is 2);
                 (Item='Âèäàëèòè çàïèñ',X is 3);
                 (Item='Ïåðåãëÿíóòè âñ³ êîìïîíåíòè',X is 4)),
    process(X).

process(X):-retractall(component),%çàâàíòàæóº áàçó äàíèõ
    reconsult('components_db.pl'),
    dynamic(component/3),
    process_choice(X).%âèêëèêàº çàïèò â³äïîâ³äíèé X

process_choice(1) :-
    new(D2,dialog('Äîäàòè íîâèé êîìïîíåíò:')),
    send(D2,append,new(L,label)),
    send(L,append,'Ââåä³òü äàíí³:'),
    send(D2,append,new(S1,text_item('Òèï:'))),
    send(D2,append,new(S2,text_item('Íàçâà:'))),
    send(D2,append,new(S3,text_item('Õàðàêòåðèñòèêè:'))),
    send(D2,append,button('Äîäàòè',message(@prolog,
                                             add_record,S1?selection,
                                             S2?selection,
                                             S3?selection))),
    send(D2,append,button('Ñêàñóâàòè',message(D2,destroy))),
    send(D2,open).

process_choice(2) :-
    new(D3,dialog('Çì³íèòè êîìïîíåíò:')),
    send(D3,append,new(L,label)),
    send(L,append,'Íàçâà êîìïîíåíòó äëÿ çì³íè: '),
    send(D3,append,new(S1,text_item('Íàçâà:'))),
    send(D3,append,new(Act,menu(action,cycle))),%ìåíþ âèáîðó ä³é
    send_list(Act,append,[' ','Òèï êîìïîíåíòà',
                          'Íàçâó êîìïîíåíòà',
                          'Õàðàêòåðèñòèêè',
                          'Í³÷îãî íå ì³íÿòè']),
    send(D3,append,button('Çì³íèòè', message(@prolog,
                                             change_item, S1?selection, Act?selection))),
    send(D3,append,button('Ñêàñóâàòè',message(D3,destroy))),
    send(D3,open).

process_choice(3) :-
    new(D4,dialog('Âèäàëèòè êîìïîíåíò:')),
    send(D4,append,new(L,label)),
    send(L,append,'Íàçâà êîìïîíåíòó äëÿ âèäàëåííÿ'),
    send(D4,append,new(S1,text_item('Íàçâà:'))),
    send(D4,append,button('Âèäàëèòè çàïèñ',message(@prolog,
                                             del_record,S1?selection))),
    send(D4,append,button('Ñêàñóâàòè',message(D4,destroy))),
    send(D4,open).

process_choice(4) :-
    new(D1,dialog('²íôîðìàö³ÿ ïðî êîíô³ãóðàö³þ.')),
    send(D1,append,new(L,label)),
    send(L,append,'²íôîðìàö³ÿ ïðî âñ³ êîìïîíåíòè. '),
    send(D1,append,new(Lb,list_browser)),%ïîëå âèâîäó ñïèñêó
    send(Lb,size,size(100, 20)),%ðîçì³ð ïîëÿ
    send(Lb,alignment,center),
    send_list(Lb,append,['Êîìïîíåíòè \n Òèï\t\t|\tÍàçâà\t|\tÕàðàêòåðèñòèêè']),%äîäàâàííÿ çàïèñ³â íà ïîëå
    component(Type, Name, Characteristics),
    string_concat(Type,"\t\t|\t",S1), string_concat(Name,"\t|\t",S2),
    string_concat(S1,S2,S3),string_concat(S3,Characteristics,S4),
    send_list(Lb,append, [S4]),
    send(D1,append,button('Ñêàñóâàòè',message(D1,destroy))),
    send(D1,open),fail.

del_record(Name):-
    remove_component(Name),
    new(M,dialog('Ðåçóëüòàò âèäàëåííÿ')),
    send(M,append,new(L,label)),
    send(L,append,'Êîìïîíåíò âèäàëåíî.'),
    send(M,open).

change_item(Name, Item):-
    ((Item='Òèï êîìïîíåíòà',X is 1);
                 (Item='Íàçâó êîìïîíåíòà',X is 2);
                 (Item='Õàðàêòåðèñòèêè',X is 3);
                 (Item='Í³÷îãî íå ì³íÿòè',X is 4)),
    update_component(Name, X).

add_record(Type,Name,Characteristics):-
    add_component(Type,Name,Characteristics),
    new(M,dialog('Ðåçóëüòàò äîäàâàííÿ')),
    send(M,append,new(L,label)),
    send(L,append,'Íîâèé êîìïîíåíò äîäàíî!'),
    send(M,open).







