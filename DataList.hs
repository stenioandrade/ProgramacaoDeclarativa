import Data.List

intersperse' a [] = []
intersperse' a [x] = [x]
intersperse' a (x:xs) = x : a : intersperse' a xs

intercalate' (x:xs) [[]:_] = []
intercalate' (x:xs) [y] = [y]
intercalate' (x:xs) (y:ys) = y : (x:xs) : intercalate' (x:xs) ys

transpose' ([]:_) = []
transpose' 
transpose' x = (map head x) : transpose' (map tail x)

concat' ([]:_) = []
concat' [(x:xs)] = (x:xs)
concat' ((x:xs):(y:ys)) = (x:xs) ++ concat' (y:ys)

--or' [] f = error "lista vazia"
--or' [x] f = if ]