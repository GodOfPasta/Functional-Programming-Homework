-- (*) Find the number of elements of a list.
-- myLength [123, 456, 789]
-- 3
-- myLength "Hello, world!"
-- 13
module Main (main) where

main :: IO ()
main = do
    print . myLength $ "abcd"
--  > 4
    print . myLength $ []
--  > 0
    print . myLength $ [1, 2, 3, 4, 5, 6]
--  > 6 

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
