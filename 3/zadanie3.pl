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

sprawdz(X,Y,Z):-
    (
    rzeczownik(X),
    czasownik(Y),
    rzeczownik(Z)
    )->
    write('zdanie prawidlowe');
    write('zdanie nieprawidlowe'),
    false.
