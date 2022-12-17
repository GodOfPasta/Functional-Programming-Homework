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
--  [10,9,8,7,6,5,4,3,2,1,0,-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]

range :: Int -> Int -> [Int]
range fst lst
    | fst == lst = [lst]
    | fst < lst = fst : range (fst+1) lst
    | otherwise = fst : range (fst-1) lst
