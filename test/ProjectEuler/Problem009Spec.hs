module ProjectEuler.Problem009Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem009

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the product of the Pythagorean triplet that sums to 1000" $
      solve 1000 `shouldBe` Just 31875000
