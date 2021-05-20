personne(k,f,85,tunis,directeur,3000).
personne(c,m,63,nabeul,prof,1500).
personne(d,f,60,nabeul,pdg,4000).
personne(e,m,35,tunis,prof,1500).
personne(g,f,27,sousse,ingenieur,2000).
personne(h,f,39,nabeul,ingenieur,2000).
personne(i,m,40,nabeul,directeur,2500).
personne(j,m,17,sousse,eleve,0).
personne(1,f,9,sousse,eleve,0).
personne(m,f,19,tunis,etudiant,0).
personne(n,m,1,tunis,eleve,0).
individu(X):-personne(X,_,_,_,_,_).
masculin(X):-personne(X,m,_,_,_,_).
feminin(X):-personne(X,f,_,_,_,_).
est_age_de(X,Y):-personne(X,_,Y,_,_,_).
profession(X,Y):-personne(X,_,_,_,Y,_).
habite_a(X,Y):-personne(X,_,_,Y,_,_).
majeur(X):-personne(X,_,Y,_,_,_),Y>=18.
mineur(X):-personne(X,_,Y,_,_,_),Y<18.
meme_age(X,Y):-personne(X,_,A,_,_,_),personne(Y,_,B,_,_,_),A=B.
habite_la_meme_ville(X,Y):-personne(X,_,_,A,_,_),personne(Y,_,_,B,_,_),A=B.
meme_profession(X,Y):-personne(X,_,_,_,A,_),personne(Y,_,_,_,B,_),A=B.
gagne_plus(X,Y):-personne(X,_,_,_,_,A),personne(Y,_,_,_,_,B),A>B.
meme_ordre_salaire(X,Y):-personne(X,_,_,_,_,A),personne(Y,_,_,_,_,B),A>B,A-B<B*0.2.
epoux_possible(X,Y):-masculin(X),feminin(Y),majeur(Y),est_age_de(X,A),est_age_de(Y,B),A>B,A-B<20.
epoux_possible(X,Y):-masculin(X),feminin(Y),majeur(Y),est_age_de(X,A),est_age_de(Y,B),A<B,B-A<20.





