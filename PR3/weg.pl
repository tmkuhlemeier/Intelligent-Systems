elem(X,[X|_]).
elem(X,[_|T]):-elem(X,T).

verwijder(_,[],[]).
verwijder(L,[H2|T2],[]):- elem(H2,L), verwijder(L,T2,[]).
verwijder(L,[H2|T2],[H2|T3]):- \+ elem(H2,L), verwijder(L,T2,T3).
verwijder(L,[H2|T2],[H3|T3]):- H2 \== H3,elem(H2,L), verwijder(L,T2,[H3|T3]).
