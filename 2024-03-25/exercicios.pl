distancia(X1,Y1,X2,Y2,D) :- D is ((X2-X1)**2+(Y2-Y1)**2)**0.5.
add_1(X,R) :- R is X+1.
maior(X,Y,R) :- R is (X+Y+abs(X-Y))/2.