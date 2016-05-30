module ProjectEuler.Problem015Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem015

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the numbers of routes in a 20 x 20 grid" $
      solve 20 `shouldBe` 137846528820
