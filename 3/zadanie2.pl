rzeczownik(kot).
rzeczownik(mleko).
rzeczownik(student).
rzeczownik(biurko).
rzeczownik(samochod).
rzeczownik(ala).

czasownik(jest).
czasownik(ma).
czasownik(jezdzi).
czasownik(nosi).
czasownik(pije).

przymiotnik(ladny).
przymiotnik(maly).
przymiotnik(smieszny).
przymiotnik(rudy).

sprawdz(X1,Z1,Y,X2,Z2):-
    (
    przymiotnik(X1),
    przymiotnik(X2),
    czasownik(Y),
    rzeczownik(Z1),
    rzeczownik(Z2)
    )->
    write('zdanie prawidlowe');
    write('zdanie nieprawidlowe'),
    false.
