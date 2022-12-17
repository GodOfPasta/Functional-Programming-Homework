module Main (main) where

main :: IO ()
main = print $ getLast ""

getLast ::[a] -> a
getLast [] = error "Not Enough Elements!"
getLast [x] = x
getLast (x:xs) = getLast xs
