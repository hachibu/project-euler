module ProjectEuler.Problem001Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem001

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "solve" $ do
    it "finds the sum of all the multiples of 3 or 5 below 100" $
      solve 10 `shouldBe` 23
    it "finds the sum of all the multiples of 3 or 5 below 1000" $
      solve 1000 `shouldBe` 233168
