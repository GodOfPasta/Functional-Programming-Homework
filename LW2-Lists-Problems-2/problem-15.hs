-- Replicate the elements of a list a given number of times.
-- Example:
-- * (repli '(a b c) 3)
-- (A A A B B B C C C)

module Main (main) where
import Control.Monad.RWS (modify)

main :: IO ()
main = do
    print (repli "abc" 0)
--  > ""
    print (repli "abc" 1)
--  > "abc"
    print (repli "abc" 2)
--  > "aabbcc"
    print (repli [1, 2, 3] 3)
--  > [1,1,1,2,2,2,3,3,3]


repli :: [a] -> Int -> [a]
repli [] _ = []
repli _ 0 = []
repli (x:xs) n = x : repli [x] (n-1) ++ repli xs n