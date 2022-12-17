-- (*) Reverse a list.
-- myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- myReverse [1,2,3,4]
-- [4,3,2,1]

module Main (main) where

main :: IO ()
main = do
    print . reverseList $ [1, 2, 3, 4, 5]
--  > [5, 4, 3, 2, 1]
    print . reverseList $ ""
--  > ""
    print . reverseList $ "abcd"
-- "dcba"

reverseList :: [a] -> [a]
reverseList  [] = []
reverseList  (x:xs) = reverseList xs ++ [x]
