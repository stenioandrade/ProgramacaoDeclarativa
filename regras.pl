perdeu_brasileiro_2015(flamengo).
perdeu_brasileiro_2015(vasco).
palmeirasnaotemmundial.
venceu(brasil,uruguai).
conhece(adao,eva).

mortal(X):-humano(X).
humano(socrates).

pai(adao,caim).
pai(adao,abel).
pai(adao,sete).
pai(adao,enos).
pai(enos,cainan).

%pai(deus,_).

filho(X,Y):- pai(Y,X).
avo(X,Y):-  (pai(X,Z) , filho(Y,Z) ; pai(X,Z) , pai(Z,Y) ).
 
ascendente(X,Y):- pai(X,Y).
ascendente(X,Y):- pai(X,Z), ascendente(Z,Y).

irmao(X,Y):- X\==Y , pai(Z,X), pai(Z,Y).

tio(X,Y):- pai(Z,Y), irmao(Z,X).

descendente(X,Y):- ascendente(Y,X).

descendente_(X,Y):- filho(X,Y).
descendente_(X,Y):- filho(X,Z) , descendente_(Z,Y).

