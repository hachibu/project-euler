module ProjectEuler.Problem010Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem010

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the sum of all primes below 2 million" $
      solve 2000000 `shouldBe` 142913828922
