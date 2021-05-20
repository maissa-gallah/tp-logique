separer([],[],[]).
separer([X],[X],[]).
separer([X,Y|L],L1,L2):-separer(L,M1,M2),L1=[X|M1],L2=[Y|M2].

fusionner([],L,L).
fusionner(L,[],L).
fusionner([X1|L1],[X2|L2],L3):-X1<X2,fusionner(L1,[X2|L2],L4),L3=[X1|L4].
fusionner([X1|L1],[X2|L2],L3):-X1>X2,fusionner([X1|L1],L2,L4),L3=[X2|L4].
fusionner([X1|L1],[X2|L2],L3):-X1=X2,fusionner([X1|L1],L2,L4),L3=[X1|L4].


trier([],[]):-!.
trier([X],[X]).
trier(L,LL):-separer(L,L1,L2),trier(L1,L11),trier(L2,L22),fusionner(L11,L22,LL),!.







