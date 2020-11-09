module AoC.Intcode where

import Data.Array.IArray

type Intcode = Array Int Int
type Position = Int


processIntcode :: Intcode -> Position -> Intcode
processIntcode c p
  | cv == 99 = c
  | otherwise = processIntcode nc (p+4)
  where cv = c ! p
        nc = processOperation c p

processOperation :: Intcode -> Position -> Intcode
processOperation c p
  | cv == 1 = proc (+)
  | cv == 2 = proc (*)
  | otherwise = error $ "invalid Intcode: " ++ (show cv)
                ++ "\ncode: " ++ (show c)
  where cv = c ! p
        p1 = c ! (c ! (p+1))
        p2 = c ! (c ! (p+2))
        p3 = c ! (p+3)
        proc f = c // [(p3, f p1 p2)]


parse :: String -> Intcode
parse s = listArray (0, length l - 1) l
  where l = read input :: [Int]
        input = "[" ++ s ++ "]"
