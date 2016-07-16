module ProjectEuler.Problem022Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem022

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the sum of all name scores" $
      solve `shouldBe` 871198282
