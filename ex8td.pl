debut([],[]).
debut([X|R],[X|B]):-debut(R,B).
debut([X|R],[X|B],N):-N>0,N1 is N-1  ,debut(R,B,N1).

