module Main (main) where

main :: IO ()
main = print $ elementAt [1,2,3] 2

elementAt :: [a] -> Int -> a
elementAt a b
    | length a - 1 < b = error "Not Enough Elements!"
    | b == 0 = head a
    | otherwise = elementAt (tail a) (b-1)
