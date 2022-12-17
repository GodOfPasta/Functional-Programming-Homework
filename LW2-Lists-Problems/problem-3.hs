-- (*) Find the K'th element of a list. The first element in the list is number 1.
-- * (insert-at 'alfa '(a b c d) 2)
-- (A ALFA B C D)

module Main (main) where

main :: IO ()
main = do
    print (elementAt "abcd" 2)
--  > "b"
    print (elementAt "X" 1000)
-- "*** Exception: Not Enough Elements!
-- CallStack (from HasCallStack):
--   error, called at problem-3.hs:12:18 in main:Main
    print (elementAt "abcd" 0)
-- "*** Exception: Invalid Index!
-- CallStack (from HasCallStack):
--   error, called at problem-3.hs:15:18 in main:Main

elementAt :: [a] -> Int -> a
elementAt a b
    | b <= 0 = error "Invalid Index!"
    | length a < b = error "Not Enough Elements!"
    | b == 1 = head a
    | otherwise = elementAt (tail a) (b-1)
