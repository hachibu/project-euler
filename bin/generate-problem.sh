#!/usr/bin/env bash

die() {
  echo "error:" "$@"; exit 1
}

if [ "$#" -ne 1 ]; then
  die "missing number argument"
fi

if ! [[ $1 =~ ^[0-9]+$ ]]; then
  die "$1 is not a number"
fi

num=$(printf "%03d\n" "$1")
filename="Problem${num}"
module="ProjectEuler.${filename}"
filepath="src/ProjectEuler/${filename}.hs"
testpath="test/ProjectEuler/${filename}Spec.hs"

if [[ -f "$filepath" ]]; then
  die "$filepath exists"
fi

if [[ -f "$testpath" ]]; then
  die "$testpath exists"
fi

file_template="module ${module} (solve) where

solve :: Integer
solve = ${num}"

test_template="module ${module}Spec (main, spec) where

import Test.Hspec
import ${module}

main :: IO ()
main = hspec spec

spec :: Spec
spec =
  describe \"solve\" $
    it \"returns ${num}\" $
      solve \`shouldBe\` ${num}"

echo "$file_template" > "$filepath"
echo "$test_template" > "$testpath"
echo "Add ${module} to exposed-modules in project-euler.cabal"
