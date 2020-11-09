module Solutions.Day1 where

import System.IO
import qualified AoC.Lib as L

day1 = L.Solution 1 parse part1 part2

parse :: (Integral a, Read  a) => String -> [a]
parse = map read . lines

part1 :: (Integral a) => [a] -> a
part1 = sum . map calculateFuel

part2 :: (Integral a) => [a] -> a
part2 = sum . map (f 0)
  where f s r
          | fuel < 0 = s
          | otherwise = f (s + fuel) fuel
          where fuel = calculateFuel r

calculateFuel :: Integral a => a -> a
calculateFuel n =  (div n 3) - 2
