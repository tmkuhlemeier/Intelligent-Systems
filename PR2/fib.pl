fibonacciL(1,1).
fibonacciL(2,1).
fibonacciL(N,F):-
    N>2,
    N1 is N-1, 
    N2 is N-2,
    fibonacciL(N1,F1),
    fibonacciL(N2,F2),
    F is F1+F2.

fibonacciT(1,1).
fibonacciT(2,1).
fibonacciT(N, F) :-
    N>2,
    fibAcc(1, N, 0, 1, F).

fibAcc(N, N, _, F, F).
fibAcc(N1, N, F1, F2, F) :-
    N2 is N1 + 1,
    F3 is F1 + F2,
    fibAcc(N2, N, F2, F3, F).