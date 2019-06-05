head( [H | _], H).
%head1([H|T],H).
%head2([H|T],R):-H=R.

tail([_|T],T).

last1( [T], T):- !.
last1([_|T],X):-last1(T,X).

last2( [ X | [] ], X):- !.
last2( [ _ | Y ], Z) :- last2(Y,Z).

init( [_] , [] ):- !.
init( [X|XS] , [X|YS] ):- init(XS,YS).

append_([], List, List):- !.
append_([X|Y], ListA, [X|ListB]):- append_(Y, ListA, ListB).

square(X, Y):- Y =:= X*X.

max_([X],X):- !.
max_([X|XS],V):- max_(XS,V), V >= X .
max_([X|XS],X):- max_(XS,V), V < X .

sum_( [ X ] , X ):- ! .
sum_( [ X|XS ] , V ) :- sum_( XS , Z ) , V is X + Z.

edge(a,b).
edge(a,d).
edge(b,c).
edge(d,e).
edge(d,f).
edge(f,g).

vai( X , Y ) :- edge( X , Y ).
vai( X , Y ) :- edge( X , Z ) , vai( Z , Y ).


gosta(maria, cafe).
gosta(maria, vinho).
gosta(joca, cafe).
gosta(joca, maria).

gosta( joca , X ) :- gosta( maria , X ).
gosta( joca , X ) :- gosta( X , vinho ).
gosta( maria , X ) :- gosta( X , maria ).
gosta( joca , X ) :- gosta( X , X ).











































