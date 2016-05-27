module ProjectEuler.Problem007Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem007

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "solve" $
    it "finds the 10,001st prime number" $
      solve 10001 `shouldBe` 104743
