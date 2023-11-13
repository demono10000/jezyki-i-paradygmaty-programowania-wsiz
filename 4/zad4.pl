dlugoscListy([], 0).
dlugoscListy([_|T], X):-
    dlugoscListy(T, X1),
    X is X1+1.
