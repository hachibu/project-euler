module ProjectEuler.Problem013Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem013

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the first 10-digits of the sum of 100 50-digit numbers" $
      solve `shouldBe` 5537376230
