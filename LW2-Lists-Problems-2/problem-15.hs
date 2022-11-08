module Main (main) where
import Control.Monad.RWS (modify)

main :: IO ()
main = do
    print (repli "abc" 0)
    print (repli "abc" 1)
    print (repli "abc" 2)
    print (repli [1, 2, 3] 3)


repli :: [a] -> Int -> [a]
repli [] _ = []
repli _ 0 = []
repli (x:xs) n = x : repli [x] (n-1) ++ repli xs n