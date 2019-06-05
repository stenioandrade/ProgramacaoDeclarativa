append_( [ ] , List , List ) :- ! .
append_( [X|XS] , ListA , [X|ListB] ) :- append_( XS , ListA , ListB) .

reverse_([X] , [X]) :- !.
reverse_( [X|XS] , Y ) :- reverse_( XS , R ) , append(R , [X] , Y).

member_(M,[M|_]):- !.
member_(M,[_|XS]):- member_(M,XS).

palin_(List):- reverse_(List,List).

palin_2([_]) :- !.
palin_2(Pal) :- append([H|T], [H], Pal), palin_2(T), !.

last1( [T], T):- !.
last1([_|T],X):-last1(T,X).

palin_3([_]) :- ! .
palin_3( [X|XS] ) :- last1([X|XS],X) , palin_3( XS ).

take_( 0 , _ , [] ) :- !.
take_( N , [X|XS] , [X|YS] ) :- M is N - 1 , take_( M , XS , YS ).

drop_( 0 , List , List ) :- !.
drop_( N , [_|XS] , List ) :- M is N - 1 , drop_( M , XS , List ).

remove_( X , [X|XS] , XS ).
remove_( N , [X|XS] , [X|YS] ) :- remove_( N , XS , YS ).

insert_( X , XS , [X|XS] ).
insert_( N , [X|XS] , [X|YS] ) :- insert_( N , XS , YS ).

permute_([],[]) :- !.
permute_(L, [X|XS]) :- append(V, [X|U], L), append(V,U,W), permute_(W,XS) , !.

permute_2( [] , [] ) :- !.
permute_2( [X|XS] , List ) :- insert_(X,List2,List), permute_2( XS , List2 ),!.











