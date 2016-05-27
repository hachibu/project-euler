module ProjectEuler.Problem006Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem006

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "solve" $
    it "finds the sum square difference for 1 through 100" $
      solve [1..100] `shouldBe` 25164150
