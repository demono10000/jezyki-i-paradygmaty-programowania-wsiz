lubi(marek,  koszykowka).
lubi(adam, hokej).
lubi(ania, planszowki).

wiek(marek, 22).
wiek(adam, 23).
wiek(ania, 21).

starszy(X, Y):-
    wiek(X, WiekX), wiek(Y, WiekY), WiekX>WiekY.

mlodszy(X, Y):-
    wiek(X, WiekX), wiek(Y, WiekY), WiekX<WiekY.

rowny(X, Y):-
    wiek(X, WiekX), wiek(Y, WiekY), WiekX=WiekY.
