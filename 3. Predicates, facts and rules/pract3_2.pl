calculate_y :-
    write('Enter a value for x: '),
    read(X),
    (X > 0 -> Y is X*X; X < 0 -> Y is sin(X); Y is 1),
    write('The value of y is: '), write(Y).