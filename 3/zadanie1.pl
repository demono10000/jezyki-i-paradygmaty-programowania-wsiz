sasiad(1,2).
sasiad(1,3).
sasiad(1,4).
sasiad(1,5).
sasiad(2,3).
sasiad(2,4).
sasiad(3,4).
sasiad(4,5).

kolor(czerwony).
kolor(zielony).
kolor(niebieski).
kolor(zolty).

region(1).
region(2).
region(3).
region(4).
region(5).

rozny_kolor(Region1, Region2, Kolor1, Kolor2) :-
  sasiad(Region1, Region2),
  kolor(Kolor1),
  kolor(Kolor2),
  Kolor1 \= Kolor2.

