osoba(pawel, slawomir, danuta, mezczyzna, 22).
osoba(krzysztof, slawomir, danuta, mezczyzna, 26).
osoba(slawomir, piotr, anna, mezczyzna, 51).
osoba(danuta, jan, ewa, kobieta, 50).

rodzenstwo(Osoba1, Osoba2):-
    osoba(Osoba1, Ojciec, Matka, _, _), osoba(Osoba2, Ojciec, Matka, _, _), Osoba1\=Osoba2.

bracia(Osoba1, Osoba2):-
    rodzenstwo(Osoba1, Osoba2), osoba(Osoba1, _, _, mezczyzna, _), osoba(Osoba2, _, _, mezczyzna, _).

siostry(Osoba1, Osoba2):-
    rodzenstwo(Osoba1, Osoba2), osoba(Osoba1, _, _, kobieta, _), osoba(Osoba2, _, _, kobieta, _).

brat(Brat, Osoba):-
    rodzenstwo(Brat, Osoba), osoba(Brat, _, _, mezczyzna, _).

siostra(Siostra, Osoba):-
    rodzenstwo(Siostra, Osoba), osoba(Siostra, _, _, kobieta, _).
