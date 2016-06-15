module ProjectEuler.Problem020Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem020

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the sum of the digits in the number 100!" $
      solve 100 `shouldBe` 648
