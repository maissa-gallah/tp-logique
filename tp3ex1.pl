adjacent( a,b ).
adjacent(a,d).
adjacent(a,c).

adjacent( d,c ).
adjacent( d,e ).
adjacent( d,a ).



adjacent( b,a ).
adjacent(b,e).
adjacent(b,c).

adjacent(e,b).
adjacent(e,c).
adjacent(e,d).

adjacent(c,a).
adjacent(c,b).
adjacent(c,d).
adjacent(c,e).

color(a,rouge,coloraige1).
color(b,vert,coloraige1).
color(d,vert,coloraige1).
color(e,rouge,coloraige1).
color(c,bleu,coloraige1).

color(a,rouge,coloraige2).
color(b,rouge,coloraige2).
color(d,vert,coloraige2).
color(e,rouge,coloraige2).
color(c,bleu,coloraige2).

conflit(X,Y,L):-color(X,Z,L),color(Y,T,L),adjacent(X,Y),Z==T.
conflit(L):-conflit(_,_,L).




