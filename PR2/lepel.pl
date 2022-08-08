plak([],[],[]).
plak([H|T],[],[H|T]).
plak([],[H|T],[H|T]).
plak([H|T],[H1|T1],[H|T2]):- plak(T,[H1|T1],T2).

omgedraaid1([],Z,Z).
omgedraaid1([H|T],Z,Acc) :- omgedraaid1(T,Z,[H|Acc]).
omgedraaid(X,Y):-omgedraaid1(X,Y,[]).

palindroomPlak([]).
palindroomPlak([X]).
palindroomPlak([H|T]):-plak(X,[H],T),palindroomPlak(X).

palindroomDraai([]).
palindroomDraai([H|T]):-omgedraaid([H|T],[H|T]).

