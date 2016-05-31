#!/usr/bin/env runhaskell

module Main (main) where

import Control.Monad
import Data.List
import Data.Maybe
import System.Directory
import System.Environment
import System.Exit
import Text.Printf
import Text.Read

(%) :: PrintfArg a => String -> a -> String
(%) f a = printf f a :: String

fileTemplate :: String -> String -> String
fileTemplate modulename number = unlines 
  [ "module %s (solve) where" % modulename
  , ""
  , "solve :: Integer"
  , "solve = %s" % number
  ]

testTemplate :: String -> String -> String
testTemplate modulename number = unlines
  [ "module %sSpec (main, spec) where" % modulename
  , ""
  , "import Test.Hspec"
  , "import %s" % modulename
  , ""
  , "main :: IO ()"
  , "main = hspec spec"
  , ""
  , "spec :: Spec"
  , "spec = parallel $"
  , "  describe \"solve\" $"
  , "    it \"returns %s\" $" % number
  , "      solve `shouldBe` %s" % number
  ]

insertAtIndex :: Int -> a -> [a] -> [a]
insertAtIndex i x xs = join [ys, [x], zs]
  where
    (ys, zs) = splitAt i xs

main :: IO ()
main = do
  args <- getArgs

  when (null args) (die "missing number argument")

  let a = head args
      m = readMaybe a :: Maybe Int

  when (isNothing m) (die $ "%s is not a number" % a)

  let number     = "%03d"                        % fromJust m
      filename   = "Problem%s"                   % number
      modulename = "ProjectEuler.%s"             % filename
      moduleline = "                     , %s"   % modulename
      cabalpath  = "project-euler.cabal"
      filepath   = "src/ProjectEuler/%s.hs"      % filename
      testpath   = "test/ProjectEuler/%sSpec.hs" % filename
      files      = [(filepath, fileTemplate), (testpath, testTemplate)]

  forM_ files (\(path, template) -> do
    fileExists <- doesFileExist path 
    when fileExists (die $ "%s exists" % path)
    printf "creating %s..." path
    writeFile path (template modulename number)
    printf "done\n")

  xs <- fmap lines (readFile cabalpath)

  let p  = "ProjectEuler.Problem"
      m' = findIndex (isInfixOf p) (reverse xs)

  when (isNothing m') (die $ "pattern not found: %s" % p)

  let i  = length xs - fromJust m'
      ys = unlines $ insertAtIndex i moduleline xs
  
  printf "updating %s..." cabalpath
  writeFile cabalpath ys
  printf "done\n"
