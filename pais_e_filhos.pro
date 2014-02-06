pais(julita,julio).
pais(joao,julio).
pais(julita,dayse).
pais(joao,dayse).
pais(julita,denise).
pais(joao,denise).

pais(dayse,felipe).
pais(rogerio,felipe).


pais(julio,ammanda).
pais(denise, joao_v).

homem(rogerio).
homem(julio).
homem(felipe).
homem(joao_v).
mulher(dayse).
mulher(denise).
mulher(julita).
mulher(ammanda).

pai(X,Y) :- homem(X), pais(X,Y).

tio(X,Y) :- homem(X),  pais(W,X), pais(W,Z), pais(Z,Y), \+pais(X,Y).
tia(X,Y) :- mulher(X), pais(W,X), pais(W,Z), pais(Z,Y), \+pais(X,Y).

prima(X,Y) :- mulher(X), pais(Z,X), pais(W,Z), pais(W,K), pais(K,Y), X\==Y.
primo(X,Y) :- homem(X), pais(Z,X), pais(W,Z), pais(W,K), pais(K,Y), X\==Y.
