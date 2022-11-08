-- Insert an element at a given position into a list
-- * (insert-at 'alfa '(a b c d) 2)
-- (A ALFA B C D)

module Main (main) where
import Control.Monad.RWS (modify)

main :: IO ()
main = do
    print (insertAt 'X' "abcd" 2)
--  > "aXbcd"
    print (insertAt 'X' [] 1000)
--  > "X"
    print (insertAt 'X' "abcd" 0)
-- "*** Exception: There is no index 0
-- CallStack (from HasCallStack):
--   error, called at problem-21.hs:15:18 in main:Main

insertAt :: a -> [a] -> Int -> [a]
insertAt _ _ 0 = error "There is no index 0"
insertAt elem [] _ = [elem]
insertAt elem list 1 = elem : list
insertAt elem (x:xs) n = x : insertAt elem xs (n-1)