reverse_([X] , [X]) :- !.
reverse_( [X|XS] , Y ) :- reverse_( XS , R ) , append(R , [X] , Y).

member_(M,[M|_]):- !.
member_(M,[_|XS]):- member_(M,XS).

palin_(List):- reverse_(List,List).

palin_2([]) :- !.
palin_2(Pal) :- append([H|T], [H], Pal), pal(T), !.

take_( 0 , _ , [] ) :- !.
take_( N , [X|XS] , [X|YS] ) :- M is N - 1 , take_( M , XS , YS ).

drop_( 0 , List , List ) :- !.
drop_( N , [_|XS] , List ) :- M is N - 1 , drop_( M , XS , List ).

remove_( X , [X|XS] , XS ).
remove_( N , [X|XS] , [X|YS] ) :- remove_( N , XS , YS ).

insert_( X , XS , [X|XS] ).
insert_( N , [X|XS] , [X|YS] ) :- insert_( N , XS , YS ).

perm([],[]) :- !.
perm(L, [X|XS]) :- append(V, [X|U], L), append(V,U,W), perm(W,XS) , !.

permute_( [] , [] ) :- !.
permute_( [X|XS] , List ) :- insert_(X,List2,List), permute_( XS , List2 ),!.











