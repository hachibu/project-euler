module ProjectEuler.Problem048Spec (main, spec) where

import Test.Hspec
import ProjectEuler.Problem048

main :: IO ()
main = hspec spec

spec :: Spec
spec = parallel $
  describe "solve" $
    it "returns 9110846700" $
      solve `shouldBe` 9110846700
