module ProjectEuler.Problem019Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem019

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the number of Sundays that fell on the first of the month during the 20th century" $
      solve `shouldBe` 171
