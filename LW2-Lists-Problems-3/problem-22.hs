-- Create a list containing all integers within a given range.
-- Example:
-- * (range 4 9)
-- (4 5 6 7 8 9)

module Main (main) where
import Control.Monad.RWS (modify)

main :: IO ()
main = do
    print (range 4 9)
--  > [4,5,6,7,8,9]
    print (range 1 1)
--  > [1]
    print (range 10 (-10))
--  > *** Exception: First element can't be larger then last
--    CallStack (from HasCallStack):
--     error, called at problem-22.hs:17:22 in main:Main

range :: Int -> Int -> [Int]
range fst lst
    | fst > lst = error "First element can't be larger then last"
range fst lst = [x | x <- [fst .. lst]]