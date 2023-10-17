parent( pam, bob).       % Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female( pam).            % Pam is female
female( liz).
female( ann).
female( pat).
male( jim).
male( tom).              % Tom is male
male( bob).

child(Dziecko, Rodzic):-
    parent(Rodzic, Dziecko).

mother(Matka, Dziecko):-
    parent(Matka, Dziecko), female(Matka).

grandparent(Dziadek, Dziecko):-
    parent(Dziadek, X), parent(X, Dziecko).

sister(X, Y):-
    parent(Z, X), parent(Z, Y), female(Y), X\=Y.

predecessor(Przodek, Osoba):-
    parent(Przodek, Osoba).
predecessor(Przodek, Osoba):-
    parent(X, Osoba), predecessor(Przodek, X).
