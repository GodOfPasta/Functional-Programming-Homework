-- Duplicate the elements of a list.
-- Example:
-- * (dupli '(a b c c d))
-- (A A B B C C C C D D)

module Main (main) where
import Control.Monad.RWS (modify)

main :: IO ()
main = do
    print . dupli $ "abc"
--  > "aabbcc"
    print . dupli $ [1, 2, 3]
--  > [1,1,2,2,3,3]
    print . dupli $ ""
--  > ""

dupli  :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x : x : dupli xs