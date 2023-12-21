% Факти
special('John Smith', 'Engineer').
special('Alice Johnson', 'Teacher').
special('David Brown', 'Lawyer').
special('Emily Davis', 'Doctor').
special('James Taylor', 'Writer').
special('Sarah Wilson', 'Designer').
special('Michael Miller', 'Programmer').
special('Laura Lee', 'Artist').
special('William Clark', 'Scientist').
special('Elizabeth Scott', 'Musician').

% Зовнішня мета
profession_is :-
    write('Name? '),
    read(Name),
    special(Name, Profession),
    write(Profession),
    nl,
    fail.

