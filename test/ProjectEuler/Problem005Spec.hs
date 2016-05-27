module ProjectEuler.Problem005Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem005

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "solve" $
    it "finds the smallest positive number divisible by 1 through 20" $
      solve `shouldBe` 232792560
