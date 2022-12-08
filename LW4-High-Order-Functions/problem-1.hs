-- Find the last element of a list.

module Main (main) where

main :: IO ()
main = do
    print $ getLast ""
--  > ""
    print $ getLast "abcde"
--  > "e"
    print $ getLast [1, 2, 3]
--  > 3

getLast :: [a] -> a
getLast = foldr1 (const id) 