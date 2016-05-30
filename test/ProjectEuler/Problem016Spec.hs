module ProjectEuler.Problem016Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem016

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the sum of the digits of 2^1000" $
      solve (2 ^ (1000 :: Integer)) `shouldBe` 1366
