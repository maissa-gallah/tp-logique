argent(jean).
argent(alain).
vacances(jean) :- mois(aout).
vacances(alain) :- mois(juillet).
mois(juillet).
soleil :- mois(aout).
reussit_travail(jean).
reussit_travail(alain).
reussit_famille(alain).
bonne_humeur(X):-argent(X),vacances(X),soleil.
bonne_humeur(X):-reussit_travail(X),reussit_famille(X).







