calcul :- write('donner nombre des iterations a faire n: '),nl, read(N),write('donner des entiers'),nl,aller(N,S,M), write('somme: '), write(S),nl,write('maximum: '),write(M).

aller(N,S,M) :- N>1,N1 is N-1, read(X), aller(N1,S1,M1), S is S1+X, M is max(X,M1).
aller(1,X,X) :- read(X).
