homem(jose).
homem(pedro).
mulher(maria).
mulher(raimunda).
pai(pedro,jose).
pai(pedro,maria).
irmao(X,Y) :- pai(Z,X), pai(Z,Y), X /= Y .