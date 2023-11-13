poczatek([],_).
poczatek([H|T1],[H|T2]):-
    poczatek(T1,T2).
