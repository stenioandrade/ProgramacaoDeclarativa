Casamento de Padrões

alfabeto 'a' = "alfa"
alfabeto 'b' = "beta"
alfabeto 'c' = "charlie"
alfabeto 'd' = "delta"
alfabeto 'x' = "sei nao..."

Case

alfabeto x = x:"equivale a "++ case x of
	'a' -> "alfa";
	'b' -> "beta";
	'c' -> "charlie";
	'd' -> "delta";
	x -> "sei nao"

Guardas

contagem x
	| x <10 = "unidades"
	| x<100 = "dezenas"
	| x<1000 = "centenas"
	| otherwise  = "milhares"

Crie sua própria versão das funcoes abaixo

a) head
 	head'[] = error "empty list."
	head' (x:_)=x

tail
last
init
length
null
reverse
take
drop
maximum
minimum
sum
product
elem
cycle
repeat
replicate


PADRÕES

lista vazia
lista com 1 itens
lista com 1 ou mais itens
lista com 2 ou mais itens
lista com mais que 2 itens
