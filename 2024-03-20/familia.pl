homem(ivo).
homesm(gil).
homem(rai).
homem(ary).
homem(noe).
mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).
mae(ana,eva).
mae(bia,rai).
mae(bia,clo).
mae(bia,ary).
mae(eva,noe).
mae(lia,gal).
pai(ivo,eva).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(rai,noe).
pai(ary,gal).

gerou(Z,M) :- pai(Z,M) ; mae(Z,M).

casal (X,Y) :- gerou(X,N) ,
               gerou(Y,N),
               X\=Y.

feliz(z) :- gerou(Z,W).

sbl(Z,W) :- gerou(A,Z),
            gerou (A, W), 
            N\=Z.

irmao(Y,Z) :- sbl(Y,Z), 
              homem (Y).

irma(X,Z) :- sbl(X,Z), 
             mulher (X).

tio(Y,Z) :- gerou(W,Z), 
            irmao(Y,W).

tia(X,Z) :- gerou(W,Z), 
            irma(X,W).

avou(Y,Z) :- pai(Y,W) , 
             gerou(W,Z).

avoo(X,Z) :- mae(X,W) , 
             gerou(W,Z).