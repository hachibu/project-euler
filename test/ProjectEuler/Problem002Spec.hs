module ProjectEuler.Problem002Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem002

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $ do
  describe "fibs" $
    it "generates the first 10 Fibonacci numbers" $
      fibs 10 `shouldBe` [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  describe "solve" $
    it "finds the sum of even Fibonacci numbers below 4,000,000" $
      solve `shouldBe` 4613732
