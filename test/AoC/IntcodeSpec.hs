
module AoC.IntcodeSpec where


import Test.Hspec
import Data.Array.IArray
import AoC.Intcode

test_input_day2 = listArray (0,11) [1,9,10,3,2,3,11,0,99,30,40,50] :: Intcode
test_output_day2 = array (0,11) [(0,3500),(1,9),(2,10),(3,70),(4,2),(5,3),(6,11),(7,0),(8,99),(9,30),(10,40),(11,50)] :: Intcode
spec = describe "Day2" $ do
  it "should correctly process the aoc day2 example" $
    (processIntcode test_input_day2 0) `shouldBe`  test_output_day2
