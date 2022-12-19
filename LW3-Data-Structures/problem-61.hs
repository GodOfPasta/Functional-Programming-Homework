-- Count the leaves of a binary tree
-- A leaf is a node with no successors. Write a predicate count_leaves/2 to count them.

-- tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
--                  (Branch 2 Empty Empty)
-- > countLeaves tree4
-- 2

module Main (main) where

main::IO()
main = do
  print . count $ Branch 1 Empty Empty
-- > 2
  print . count $ Empty
-- > 1
  print . count $ Branch "I" (Branch "am" Empty Empty) (Branch "a genius" Empty Empty)
-- > 4            

data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

count :: Tree a -> Int
count Empty = 1
count (Branch _ left right) = count left + count right