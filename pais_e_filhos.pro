pais(julita,julio).
pais(joao,julio).
pais(julita,dayse).
pais(joao,dayse).
pais(julita,denise).
pais(joao,denise).

pais(dayse,felipe).
pais(rogerio,felipe).


pais(julio,ammanda).

homem(rogerio).
homem(julio).
homem(felipe).
mulher(dayse).
mulher(denise).
mulher(julita).
mulher(ammanda).

pai(X,Y) :- homem(X), pais(X,Y).

tio(X,Y) :- homem(X),  pais(W,X), pais(W,Z), pais(Z,Y), \+pais(X,Y).
tia(X,Y) :- mulher(X), pais(W,X), pais(W,Z), pais(Z,Y), \+pais(X,Y).

%% prima(X,Y) :- mulher(X), tio(Z,Y).
