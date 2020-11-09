module Solutions.Day1Spec where

import Test.Hspec
import Solutions.Day1

test_input_day1_1 :: Int
test_input_day1_1 = 100756

spec = context "part1" $ do
    it "should calculate example fuel for part 1" $
      (part1 [100756]) `shouldBe` 33583
