module Main (main) where

data Answer = TwoRoots {x1, x2 :: Double} | OneRoot {x :: Double} | NoRoots

main :: IO ()
main = do 
    a <- getLine
    b <- getLine
    c <- getLine
    print . printAnswer $ solve (read a :: Double) (read b :: Double) (read c :: Double)

printAnswer :: Answer -> String
printAnswer NoRoots = "No Solutions"
printAnswer (OneRoot x) = show x
printAnswer (TwoRoots x1 x2) = show x1 ++ "; " ++ show x2

solve :: Double -> Double -> Double -> Answer
solve a b c
    | a == 0 || disc < 0 = NoRoots
    | disc > 0 = TwoRoots {x1 = x1, x2 = x2}
    | otherwise = OneRoot {x = x1}
    where
        disc = b^2 - 4 * a * c
        x1 = (-b - sqrt disc) / (2 * a)
        x2 = (-b + sqrt disc) / (2 * a)
