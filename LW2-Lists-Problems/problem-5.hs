module Main (main) where

main :: IO ()
main = print $ reverseList ""
reverseList :: [a] -> [a]
reverseList  [] = []
reverseList  (x:xs) = reverseList xs ++ [x]
