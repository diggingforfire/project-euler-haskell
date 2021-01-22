-- list comprehensions
import Data.List (union)
solve = sum [ x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0] 
solve' = sum (union [3,6..999] [5,10..999])