module ProjectEuler.Problem024Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem024

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the millionth lexicographic permutation of the digits [0..9]" $
      solve `shouldBe` [2, 7, 8, 3, 9, 1, 5, 4, 6, 0]
