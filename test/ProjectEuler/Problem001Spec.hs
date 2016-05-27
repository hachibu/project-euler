module ProjectEuler.Problem001Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem001

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the sum of all multiples of 3 or 5 below 1,000" $
      solve 1000 `shouldBe` 233168
