alfabeto 'a' = "alfa"
alfabeto 'b' = "beta"
alfabeto 'c' = "charlie"
alfabeto 'd' = "delta"


alfabeto x = x: " equivale a " ++ case x of
				'a' -> "alfa";
				'b' -> "beta";
				'c' -> "charlie";
				 x -> "caractere nao definido"
				 
				 
contagem x 
		|x<10 = "unidades"
		|x<100 = "dezenas"
		|x<1000 = "centenas"
		|otherwise = "milhares"
		
		
head' [] = error "empty list"
head' (x:_) = x

tail' [] = error "empty list"
tail' (_:x) = x

init' [] = error "empty list"
init' (x:[]) = []
init' (x:y) = x : init'(y)

last' [] = error "empty list"
last' (x:[]) = x
last' (_:x) = last'(x)

listempt ([]) = True
listempt x = False
umoumais (x:_) = True
umoumais x = False 
um (x:[]) = True
um x = False
doisoumais (x:y:_) = True
doisoumais x = False
dois (x:y:[]) = True
dois x = False


casa (x:_) = True
casa x = False

length' [] = 0
length' (x:[]) = 1
length' (x:y) = 1 + length'(y)

null' [] = True
null' x = False

reverse' [] = error "empty list"
reverse' (x:[]) = [x]
reverse' (x:y) = reverse'(y) ++ [x]
