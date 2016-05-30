module ProjectEuler.Problem014Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem014

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $ do
  describe "collatzSeq" $
    it "finds the first 13 Collatz numbers" $
      collatzSeq 13 `shouldBe` [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
  describe "solve" $
    it "finds the number under 1000000 that produces the longest Collatz sequence" $
      solve `shouldBe` 837799
