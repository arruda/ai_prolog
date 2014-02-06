%% Estatuas e cofres e paredes pintadas...

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

pais(denise,filha_do_padeiro).
pais(padeiro,filha_do_padeiro).

homem(rogerio).
homem(padeiro).
homem(julio).
homem(felipe).
homem(joao_v).
mulher(dayse).
mulher(denise).
mulher(julita).
mulher(ammanda).
mulher(filha_do_padeiro).

pai(X,Y) :- homem(X), pais(X,Y).


tio(X,Y) :- homem(X),  pais(W,X), pais(W,Z), pais(Z,Y), \+pais(X,Y).
tia(X,Y) :- mulher(X), pais(W,X), pais(W,Z), pais(Z,Y), \+pais(X,Y).


prima(X,Y) :- mulher(X), pais(Z,X), pais(W,Z), pais(W,K), pais(K,Y), X\==Y.
primo(X,Y) :- homem(X), pais(Z,X), pais(W,Z), pais(W,K), pais(K,Y), X\==Y.


irmao(X,Y) :- homem(X), pais(Z,X), pais(Z,Y), pais(W,X), pais(W,Y), W\==Z, X\==Y.
irma(X,Y) :- mulher(X), pais(Z,X), pais(Z,Y), pais(W,X), pais(W,Y), W\==Z, X\==Y.


meio_irma(X,Y) :- mulher(X), pais(Z,X), pais(Z,Y), \+irmao(X,Y), \+irma(X,Y), X\==Y.
meio_irmao(X,Y) :- homem(X), pais(Z,X), pais(Z,Y), \+irmao(X,Y), \+irma(X,Y), X\==Y.
