verwijder3([],[]).

verwijder3([3|T],[]):-verwijder3(T,[]).

verwijder3([3|T],[H2|T2]):-
    H2 \== 3,
    verwijder3(T,[H2|T2]).

verwijder3([H|T],[H2|T2]):-
    \+ (H == 3),
    H2 = H,
    verwijder3(T,T2).

