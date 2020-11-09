module Solutions.Day2 where

import System.IO
import Data.Array.IArray
-- import qualified Data.List.Split
import qualified AoC.Lib as L
import qualified AoC.Intcode as I 
day2 = L.Solution 2 I.parse part1 part2


part1 :: I.Intcode -> Int
part1 i = (! 0) $ I.processIntcode i1202 0
  where i1202 = initIntcode i 12 2

part2 :: I.Intcode -> (Int, Int)
part2 i = ( sol ! 1 , sol ! 2) 
  where is = [  I.processIntcode (initIntcode i n v) 0 | n <- xs, v <- xs ]
        xs = [0..99]
        sol = head $ filter ((== 19690720) . (!0))  is
                                                 
                                                 

initIntcode :: I.Intcode -> Int -> Int -> I.Intcode
initIntcode i n v = i // [(1,n),(2,v)]
