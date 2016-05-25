module ProjectEuler.Problem003Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem003

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe "solve" $
    it "finds the largest prime factor of 600851475143" $
      solve 600851475143 `shouldBe` 6857
