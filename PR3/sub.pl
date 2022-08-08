somlijstZ([],0).
somlijstZ([H|T],S) :-
    number(H),
    somlijstZ(T,S2),
    S is S2+H.

somlijst([],0).
somlijst(L,S) :- somAcc(L,S,0).
somAcc([],S,S).
somAcc([H|T],S,Acc) :-
    number(H),
    NewAcc is Acc+H,
    somAcc(T,S,NewAcc).

sublijst([],_).
sublijst([H|T],[H|T2]) :- sublijst(T,T2).
sublijst([H|T],[_|T2]) :- sublijst([H|T],T2).

