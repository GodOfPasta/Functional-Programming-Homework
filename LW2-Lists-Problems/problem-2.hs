module Main (main) where

main :: IO ()
main = print $ getButLast "abcde"

getButLast :: [a] -> a
getButLast a
    | length a <= 1 = error "Not Enough Elements"
    | length a == 2 = head a
    | otherwise = getButLast $ tail a

--Вариант вообще без встроенных ф-й, но он мне не нравится

-- getButLast [] = error "Not Enough Elements"
-- getButLast [a] = error "Not Enough Elements"
-- getButLast [a, b] = a
-- getButLast (x:xs) = getButLast xs
