-- (*) Find the last but one element of a list.
-- myButLast [1,2,3,4]
-- 3
-- myButLast ['a'..'z']
-- 'y'

module Main (main) where

main :: IO ()
main = do
    print $ getButLast ""
-- "*** Exception: Not Enough Elements
-- CallStack (from HasCallStack):
--   error, called at problem-2.hs:11:18 in main:Main
    print $ getButLast "abcde"
--  > "d"
    print $ getButLast [0, 1, 2, 3]
--  > "2"

getButLast :: [a] -> a
getButLast a
    | length a <= 1 = error "Not Enough Elements"
    | length a == 2 = head a
    | otherwise = getButLast $ tail a
