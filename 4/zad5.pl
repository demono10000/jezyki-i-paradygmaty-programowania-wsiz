polacz([], Lista, Lista).
polacz([H|T], Lista2,[H|Wynik]):-
    polacz(T, Lista2, Wynik).
