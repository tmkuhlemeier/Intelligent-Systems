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


