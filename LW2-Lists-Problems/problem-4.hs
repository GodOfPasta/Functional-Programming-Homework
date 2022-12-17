module Main (main) where

main :: IO ()
main = print $ myLength "aaaaa"

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
