zatrudnienie(anna, nowak, zelmer, duza_firma, 20000).
zatrudnienie(jan, dab, pge, duza_firma, 25000).
zatrudnienie(adam, kowalski, polx, mala_firma, 2850).
zatrudnienie(janina, stokrotka, marketx, srednia_firma, 3500).

zadowolony(Imie, Nazwisko):-
    zatrudnienie(Imie, Nazwisko, _, mala_firma, Wyplata),
    Wyplata > 2500.
duza_firma_male_pieniadze(Imie, Nazwisko):-
    zatrudnienie(Imie, Nazwisko, _, duza_firma, Wyplata),
    Wyplata < 1500.
