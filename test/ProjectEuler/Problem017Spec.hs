module ProjectEuler.Problem017Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem017

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "finds the number of letters required to write out 1 to 1000 in words" $
      solve [1..1000] `shouldBe` 21124
