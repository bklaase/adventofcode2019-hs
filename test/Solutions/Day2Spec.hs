module Solutions.Day2Spec where

import Test.Hspec
import Solutions.Day2
  
import Data.Array.IArray
import AoC.Intcode
  

part1_testinput = listArray (0, length l - 1) l :: Intcode
  where l = [1,9,10,3,2,3,11,0,99,30,40,50]


spec = context "part1" $ do
  it "should solve the example intcode" $
    (part1 part1_testinput) `shouldBe` 3500
