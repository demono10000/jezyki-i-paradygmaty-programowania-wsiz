d�ugo��(kontener1, 20).
szeroko��(kontener1,30).
wysoko��(kontener1, 15).
d�ugo��(kontener2, 25).
szeroko��(kontener2,9).
wysoko��(kontener2, 10).

objetosc(X, Y):-
    d�ugo��(X,A),
    szeroko��(X,B),
    wysoko��(X,C),
    Y is A*B*C.
