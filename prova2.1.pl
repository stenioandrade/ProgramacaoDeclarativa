head_( [ H | _ ] , H ).

append_( [ ] , List , List ) :- ! .
append_( [X|XS] , ListA , [X|ListB] ) :- append_( XS , ListA , ListB) .

max_( [X] , X ) :- ! .
max_( [X|XS] , M ) :- max_( XS , M ) , M >= X .
max_( [X|XS] , X ) :- max_( XS , M ) , M < X .