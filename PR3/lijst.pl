vanTot(L,L,[L]).
vanTot(L,H,[L|T]) :-
    integer(L),
    integer(H),
    L<H,
    L2 is L+1,
    vanTot(L2,H,T).

vanTot(L,H,[L|T]) :-
    integer(L),
    integer(H),
    L>H,
    L2 is L-1,
    vanTot(L2,H,T).

lijstsom(L,S):-
    integer(S),
    S>0,
    N1 is sqrt(0.25+(2*S))-0.5,
    N is floor(N1),
    N =:= N1,
    vanTot(1,N,L).
