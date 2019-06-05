sudo apt-get install haskell-plataform

:l arquivo.hc
:r carrega novamente o programa
:t indentificador retorna o tipo do identificador
:q sai do ghci


literais 

1   2  1.5
0o  77
0x  ff
1.0 E3

Booleanos 
True False

Strings "bom dia"

caracteres 'a' '#'


operadores
	aritméticos + - * / ^ **
	booleanos not && ||
	strings ++
	comparação < <= > >= == /=

Funções
	min	 max	
	succ	pred	
	mod		rem		
	compare		
	log		logBase		
	sin		cos		tan		
	acos	atan	asin
	truncate
	round	
	floor
	ceiling
	pi

Módulo Data.Bits
Carregar o módulo usando
:m +Data.Bits

Operadores 
	bit a bit .&. .|.
Funções 
	xor
	complement
	rotate
	testBit
	shiftL
	shiftR

Variáveis
	Seus identificadores começam com letra minúscula ou sublinhada, e os demais caracteres podem ser letras maiúsculas, minúsculas,
	digitos, aspas simples ou sublinhado
Declaração de Variáveis
	>let <identificador> = <valor>
	Ex:
	>let x12 = 10
Ao declarar dentro de scripts, atribuir o valor sem let
	¬<identificador> = <valor>
	Ex:
	arq.hs ¬x12=12

COmentarios 
	-- DE uma linha
	E de
	{- Multiplas 
	linhas -}

Declaração de Funções
	Indentificadores de funções seguem as mesmas restrições que os identificadores de variáveis
	Ao declarar interativamente, usar let
	>let <identificador> [parametros separados por espaço] = <instruções>

	Ex:
	>let double x = 2*x

	Em scripts declarar sem let
	¬ <identificador> [parametros separados por espaço] = <instruções>
	Ex: double x = 2*x
