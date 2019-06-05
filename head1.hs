import Data.Char

head' [] = error "empty list."
head' (x:_) = x

tail' [] = error "empyt list."
tail' (_:x) = x

last' [] = error "empyt list."
last' (x:[]) = x
last' (_:x) = last'(x)

init' [] = error "empyt list."
init' (x:xs) = x : init xs

length' [] = 0
length' (_:xs) = 1 + length' xs

null' [] = True
null' (x:_) = False

reverse' [] = []
reverse' (x:xs) = reverse' xs ++[x]

take' 0 x = []
take' n (x:xs) = x : take' (n-1) xs

drop' 0 x = x
drop' n [] = []
drop' n (x:xs) = drop' (n-1) xs

maximum' [] = error "empty list."
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

minimum' [] = error "empty list."
minimum' [x] = x
minimum' (x:xs) = min x (minimum' xs)

sum' [] = 0
sum' (x:xs) = x + sum' xs

product' [] = 1
product' (x:xs) = x * product' xs

elem' n []  = False
elem' n (x:xs) | n==x = True
elem' n (x:xs) = elem' n xs

zip' [] [] = []
zip' [] (z:zs) = []
zip' (x:xs) [] = []
zip' (x:xs) (z:zs) = (x,z):zip' xs zs

zipWith' f [] [] = []
zipWith' f [] (z:zs) = []
zipWith' f (x:xs) [] = []
zipWith' f (x:xs) (z:zs) = f x z:zipWith' f xs zs

map' f [] = []
map' f (x:xs) = f x:map' f xs

filter' h [] = []
filter' h (x:xs) = if (h x == True) then x:filter' h xs else filter' h xs

testaX x = if (x >= 32 && x <= 90) then True else error"Nao está no intervalo"

colocaCerto [] = []
colocaCerto (x:xs) = ((mod x 32)+32): colocaCerto xs

encodeN x y
 |testaX x= if(x+y)<=90 then x+y else ((x+y)-90)+31
 |otherwise= error"error"

decodeN x y
 |testaX x= if(x-y)>=32 then (encodeN x y)-y else (x-y)+59
 |otherwise= error"error"

endecN x y
 |encodeN x y == decodeN (encodeN x y) y = x
 |otherwise= error"error"

encode x string = 
    let ascii = map ord string  
        deslocado = map (+ x) (colocaCerto ascii)  
    in  map chr deslocado
 
decode x string =
	let ascii = map ord string
		oi = map (colocaCerto ascii)
	in map chr oi
