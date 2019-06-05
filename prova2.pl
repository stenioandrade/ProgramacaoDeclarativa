gosta(maria, cafe).
gosta(maria, vinho).
gosta(joca, cafe).
gosta(joca, maria).

% 1-
	% a)
	gosta(joca,X):- gosta(maria,X).
	
	% b)
	gosta(joca,X):- gosta(X,vinho).

	% c)
	gosta(maria,X):- gosta(X,maria).

	% d)
	gosta(joca,X) :- gosta(X,X).

% 2-
	% a)
		%gosta(joca,X).
		%gosta(X,vinho).
		%gosta(X,Y).
		%gosta(X,X).

% 4-
	last_([N],N) :- !.
	last_([_|XS],N) :- last_(XS,N).

% 5-
	member_(M,[M]) :- !.
	member_(M,[M|_]).
	member_(M,[_|XS]) :- member_(M,XS).














