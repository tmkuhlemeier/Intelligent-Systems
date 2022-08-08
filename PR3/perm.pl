invoeging(X,[],[X]).
invoeging(X,[H|T],[H|T2]) :- invoeging(X,T,T2).
invoeging(X,[H|T],[X|T2]) :- zelfde([H|T],T2).

verwijdering(X,[X],[]).
verwijdering(X,[H|T],[H|T2]) :- verwijdering(X,T,T2).
verwijdering(X,[X|T],[H2|T2]) :-
    H2\== X, 
    zelfde(T,[H2|T2]).

zelfde([],[]).
zelfde([H|T],[H|T2]) :- zelfde(T,T2).

permutatieI(P,L) :- permAcc(P,L,[]).
permAcc(Acc,[],Acc).
permAcc(P,[H|T],Acc) :-
    invoeging(H,Acc,NewAcc),
    permAcc(P,T,NewAcc).

permutatieV([],[]).
permutatieV([H|T],L) :- 
    verwijdering(H,L,L2),
    permutatieV(T,L2).



