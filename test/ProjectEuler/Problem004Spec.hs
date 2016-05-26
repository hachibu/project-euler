module ProjectEuler.Problem004Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem004

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "solve" $
    it "finds the largest palindrome product of two 3-digit numbers" $
      solve 3 `shouldBe` 906609
