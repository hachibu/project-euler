module ProjectEuler.Problem003Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem003

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the largest prime factor of 600,851,475,143" $
      solve 600851475143 `shouldBe` 6857
