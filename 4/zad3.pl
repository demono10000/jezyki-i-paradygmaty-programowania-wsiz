nalezy(E,[E|_]).
nalezy(E,[_|T]):-
    nalezy(E,T).
