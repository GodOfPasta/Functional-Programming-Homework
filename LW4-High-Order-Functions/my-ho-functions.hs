-- Ф-я filter
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x: xs)
    | f x = x : filter' f xs
    | otherwise = filter' f xs

-- Ф-я flip
flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x

-- Ф-я map
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

-- Ф-я zipWith
zipWith' :: (a -> b-> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
