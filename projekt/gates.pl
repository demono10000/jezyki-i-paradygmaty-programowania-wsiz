% Definicje bramek logicznych
and_gate(0, 0, 0).
and_gate(0, 1, 0).
and_gate(1, 0, 0).
and_gate(1, 1, 1).

or_gate(0, 0, 0).
or_gate(0, 1, 1).
or_gate(1, 0, 1).
or_gate(1, 1, 1).

not_gate(0, 1).
not_gate(1, 0).

xor_gate(A, B, C) :- or_gate(A, B, O), and_gate(A, B, A1), not_gate(A1, N), and_gate(O, N, C).
nand_gate(A, B, C) :- and_gate(A, B, X), not_gate(X, C).
nor_gate(A, B, C) :- or_gate(A, B, X), not_gate(X, C).
xnor_gate(A, B, C) :- xor_gate(A, B, X), not_gate(X, C).

% Sumator pó³bitowy
half_adder(A, B, Sum, Carry) :-
    xor_gate(A, B, Sum),
    and_gate(A, B, Carry).

% Sumator pe³nobitowy
full_adder(A, B, Cin, Sum, Cout) :-
    half_adder(A, B, S, C),
    half_adder(S, Cin, Sum, C1),
    or_gate(C, C1, Cout).

% Obliczanie oczekiwanej sumy i przeniesienia
expected_result(A, B, Cin, ExpectedSum, ExpectedCout) :-
    TempSum is A + B + Cin,
    ExpectedSum is TempSum mod 2,
    ExpectedCout is TempSum // 2.

% Testowanie sumatora pe³nobitowego z weryfikacj¹ wyników
test_full_adder :-
    between(0, 1, A),
    between(0, 1, B),
    between(0, 1, Cin),
    full_adder(A, B, Cin, Sum, Cout),
    expected_result(A, B, Cin, ExpectedSum, ExpectedCout),
    (Sum =:= ExpectedSum, Cout =:= ExpectedCout ->
        ResultMsg = "poprawny" ;
        ResultMsg = "niepoprawny"),
    format('A=~w, B=~w, Cin=~w: Sum=~w, Cout=~w, Oczekiwano: Sum=~w, Cout=~w, Wynik: ~w~n',
           [A, B, Cin, Sum, Cout, ExpectedSum, ExpectedCout, ResultMsg]),
    fail.
test_full_adder.
