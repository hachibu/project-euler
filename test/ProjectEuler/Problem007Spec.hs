module ProjectEuler.Problem007Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem007

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the 10001st prime number" $
      solve 10001 `shouldBe` 104743
