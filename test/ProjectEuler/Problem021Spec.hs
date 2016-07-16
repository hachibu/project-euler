module ProjectEuler.Problem021Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem021

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the sum of all the amicable numbers under 10000" $
      solve `shouldBe` 31626
