import Data.Char

g _ [] = []
g f (x:xs) |((f x) == True) = x : g f xs
		   |otherwise = g f xs

y _ [] = True
y f (x:xs) = if f/=x then False else y f xs
		   
head' [] = error "empty list."
head' (x:_) = x

tail' [] = error "empyt list."
tail' (_:x) = x

last' [] = error "empyt list."
last' (x:[]) = x
last' (_:x) = last'(x)

init' [] = error "empyt list."
init' (x:[]) = []
init' (x:xs) = x : init xs

length' [] = 0
length' (_:xs) = 1 + length' xs

null' [] = True
null' (x:_) = False

reverse' [] = []
reverse' (x:xs) = reverse' xs ++[x]

take' n [] = []
take' 0 (x:_) = []
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