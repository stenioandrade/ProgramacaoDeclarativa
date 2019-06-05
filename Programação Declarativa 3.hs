Comprehension
	É um tipo de notação usado para definir listas
	Seja A = {n tal que n  pertence aos naturais}
	A notação equivalente em Haskell é
	>[n | n <- [1..]]

	Seja B={n tal que n pertence aos naturais, n <= 10}
	Defina B em Haskell
	>[n | n <- [1..10]]
	>[n | n <- [1..], n<=10]
	
	C = {n tal que n pertence aos naturais, n <= 10, n é par}
	C = >[n|n<-[1..10] even n]
	D = {n tal que n pertence aos naturais, n<=20, 2 divide n e 3 divide n}
	D = >[n|n<-[2,3,4,6..20]]
	E = [3n tal que n percente aos naturais, n<=10}
	E = >[3*n|n<-[0..10]]
	F = {se x<4 entao 'A' senão 'B' tal que x pertence aos naturais e x<=12}
	F = >[if(x<4) then 'A' else 'B'|x<-[1..12]]
	G = {se x<4 entao 'A' senão 'B', x pertence aos naturais, x<=12, x é par}
	G = >[if(x<4) then 'A' else 'B'|x<-[1..12], even x]
	H = {se x<4 entao 'A' senão 'B', x pertence aos naturais, x<=12, x é impar}
	H = >[if(x<4) then 'A' else 'B'|x<-[1..12], odd x]
	I = {se x<4 entao 'A' senão 'B', x pertence aos naturais, x<=12, 4 divide x}
	I = >[if(x<4) then 'A' else 'B'|x<-[1..12], (mod x 4) == 0]
	J = {se x<4 entao 'A' senão 'B', x pertence aos naturais, x<=12, x mod 4 == 1}
	J = > [if(x<4) then 'A' else 'B'|x<-[1..12], (mod x 4) == 1]

	Remova da string "Bom Dia." usando comprehension
	a) TODOS OS CARACTERES QUE NÃO SÃO MINUSCULOS
	let n = [k|"Bom dia."elem k [a..z]]

	b) Todos os caracteres que são letras maiusculas.

	1- Crie uma função chamada divisores que recebe um inteiro n e retorna todos os seus divisores.
	2- Crie uma função chamada EhPrimo que recebe um inteiro n e retorna True se for primo e False caso contrario
	3- Crie uma função chamada fatorial que recebe um inteiro n e usa RANGES para calcular seu fatorial.
	4- Use as funções acima para encontrar os primeiros 10 numeros primos fatoriais da forma,  (n!+1) ou (n!-1)


