module ProjectEuler.Problem012Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem012

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $ do
  describe "triangleNums" $
    it "finds the first 7 triangle numbers" $
      take 7 triangleNums `shouldBe` [1, 3, 6, 10, 15, 21, 28]
  describe "numFactors" $
    it "finds the number of factors for the first 7 triangle numbers" $
      map numFactors (take 7 triangleNums) `shouldBe` [1, 2, 4, 4, 4,4, 6]
  describe "solve" $
    it "finds the first triangle number to have over 500 divisors" $
      solve `shouldBe` 76576500
