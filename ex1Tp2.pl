personne(k,f,85,tunis).
personne(c,m,63,nabeul).
personne(d,f,60,nabeul).
personne(e,m,35,tunis).
personne(g,f,27,sousse).
personne(h,f,39,nabeul).
personne(i,m,40,nabeul).
personne(j,m,17,sousse).
personne(1,f,9,sousse).
personne(m,f,19,tunis).
personne(n,m,1,tunis).
individu(X):-personne(X,_,_,_).
masculin(X):-personne(X,m,_,_).
feminin(X):-personne(X,f,_,_).
est_age_de(X,Y):-personne(X,_,Y,_).
habite_a(X,Y):-personne(X,_,_,Y).
majeur(X):-personne(X,_,Y,_),Y>=18.
mineur(X):-personne(X,_,Y,_),Y<18.
meme_age(X,Y):-personne(X,_,A,_),personne(Y,_,B,_),A=B.
habite_la_meme_ville(X,Y):-personne(X,_,_,A),personne(Y,_,_,B),A=B.
epoux_possible(X,Y):-masculin(X),feminin(Y),majeur(Y),est_age_de(X,A),est_age_de(Y,B),A>B,A-B<20.
epoux_possible(X,Y):-masculin(X),feminin(Y),majeur(Y),est_age_de(X,A),est_age_de(Y,B),A<B,B-A<20.



