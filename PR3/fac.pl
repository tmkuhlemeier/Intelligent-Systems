faculteitLeft(0,1).
faculteitLeft(1,1).
faculteitLeft(N,F):- 
    N \= 0, 
    N1 is (N - 1),
    faculteitLeft(N1,F1), 
    F is (F1*N).

faculteitTail(0,1).
faculteitTail(1,1).
faculteitTail(N,F):- facAcc(N,F,2,2).

facAcc(N,F,N,F).
facAcc(N,F,N1,Acc):- 
    N1<N,
    N2 is (N1+1),
    NewAcc is (Acc*N2),
    facAcc(N,F,N2,NewAcc).


