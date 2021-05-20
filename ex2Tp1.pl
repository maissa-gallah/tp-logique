lire(X):-write('donner un entier '),nl,read(X),nl,write('votre entier est '),write(X),nl,nl.
calcul_carre(X,Y):-Y is X*X.
ecrire_resultat(X,Y):-write('le carré de '),write(X),write('est'),write(Y),nl,nl.
aller:-lire(X),calcul_carre(X,Y),ecrire_resultat(X,Y).
carre:-write('donner un entier '),nl,read(X),nl,write('votre entier est '),write(X),nl,Y is X*X , write('le carre est '),write(Y),nl.
carre_loop:-write('donner un entier non null '),nl,read(X),nl,(X =\= 0-> write('votre entier est '),write(X),nl,Y is X*X , write('le carre est '),write(Y),nl,carre_loop ; write('X=0,erreur'),nl).
factorielle(X,Y):-(X>1 -> T is (X-1),factorielle(T,Z),Y is X*Z;Y=1).

