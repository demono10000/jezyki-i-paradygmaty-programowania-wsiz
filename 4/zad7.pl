usunElement(X,[],[]).
usunElement(X,[X|Tail],NowaLista):-
    usunElement(X,Tail,NowaLista).
usunElement(X, [H|T], [H|NowaLista]):-
    X \= H,
    usunElement(X, T, NowaLista).


