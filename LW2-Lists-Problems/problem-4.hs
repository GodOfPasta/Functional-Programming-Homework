module Main (main) where

main :: IO ()
main = print $ myLength "aaaaa"

myLength :: [a] -> Int
myLength = length
