-- (*) Find the last element of a list.
-- myLast [1,2,3,4]
-- 4
-- myLast ['x','y','z']
-- 'z'

module Main (main) where

main :: IO ()
main = do
    print $ getLast ""
--  > ""
    print $ getLast "abcde"
--  > "e"
    print $ getLast [0, 1, 2, 3]
--  > "3"

getLast ::[a] -> a
getLast [] = error "Not Enough Elements!"
getLast [x] = x
getLast (x:xs) = getLast xs
