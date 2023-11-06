nwd(X,X,X).
nwd(X,Y,D):-
    X<Y,
    Y1 is Y - X, nwd(X,Y1,D).
nwd(X,Y,D):-
    Y<X,
    nwd(Y,X,D).
