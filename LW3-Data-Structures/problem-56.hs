--Let us call a binary tree symmetric if you can draw a vertical line through the root node and then the right subtree is the mirror 
-- image of the left subtree. Write a predicate symmetric/1 to check whether a given binary tree is symmetric.
-- > symmetric (Branch 'x' (Branch 'x' Empty Empty) Empty)
-- False
-- > symmetric (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty))
-- True

main :: IO ()
main = do 
  print . isSymmetric $ Branch 'x' (Branch 'x' Empty Empty) Empty
-- > False
  print . isSymmetric $ Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)
-- > True
  print . isSymmetric $ Branch 'x' (Branch 'y' Empty Empty) (Branch 'x' Empty Empty)
-- > False
  print . isSymmetric $ Branch 'x' (Branch 'x' (Branch 'x' Empty Empty) Empty) (Branch 'x' Empty (Branch 'x' Empty Empty))
-- > True

data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

checkBranch :: Eq a => Tree a -> Tree a -> Bool
checkBranch Empty Empty = True
checkBranch (Branch n1 l1 r1) (Branch n2 l2 r2) = checkBranch l1 r2 && checkBranch l2 r1 && (n1 == n2)
checkBranch _ _ = False

isSymmetric :: Eq a => Tree a -> Bool
isSymmetric Empty = True
isSymmetric (Branch _ l r) = checkBranch l r