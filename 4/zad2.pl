piszListe([]).
piszListe([H|T]):-
    write(H),
    write(' '),
    piszListe(T).
