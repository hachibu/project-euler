module ProjectEuler.Problem011Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem011

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the greatest product of 4 adjacent numbers in a 20 x 20 grid" $
      solve `shouldBe` 70600674
