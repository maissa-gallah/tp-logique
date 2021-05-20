%avec not
intersection([],L, []).
intersection([X|L1], L, [X|L2]):-
    member(X, L),
    intersection(L1, L, L2).
intersection([X|L1], L,L2):-
    not(member(X,L)),
    intersection(L1, L, L2).

%avec cut !
%intersect([],_,[]).

%intersect([X|L1],L2,[X|R]):-member(X,L2),!,intersect(L1,L2,R).

%intersect([_|L1],L2,R):-intersect(L1,L2,R).
%

different(X,Y):- X =Y,!,fail.
different(X,Y).

differentnot(X,Y):-not(X = Y).

%ex8

debut([],[]).
debut([[A|_]|L],[A|P]):-debut(L,P).
debutn([],[]).
debutn([X|R],[X|L]):-length(R,L),L > -1,debutn(R,L).



