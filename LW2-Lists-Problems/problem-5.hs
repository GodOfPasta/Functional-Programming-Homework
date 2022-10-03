module Main (main) where

main :: IO ()
main = print $ reverseList ""
reverseList :: [a] -> [a]
reverseList  [] = []
reverseList  xs = last xs : reverseList (init xs)