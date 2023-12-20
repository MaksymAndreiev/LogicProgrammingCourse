% ������ ������� Y(X)
y(X, Y) :-
  Y is exp(X) + sqrt(X).

% ���������� �������� ������� Y(X) �� �������� [a,b] � ������ h
compute_y(A, B, H) :-
  A =< B,
  y(A, Y),
  write('Y('), write(A), write(') = '), write(Y), nl,
  A1 is A + H,
  compute_y(A1, B, H).
