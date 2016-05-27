module ProjectEuler.Problem008Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem008

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the largest product of 13 adjacent digits in a 1000-digit number" $
       solve 13 `shouldBe` 23514624000
