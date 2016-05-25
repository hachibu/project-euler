#!/usr/bin/env bash

run() {
  echo "+" "$@"; echo -e "$("$@" 2>&1)" "\n" | sed "s/^/  /"
}

run brew update
run brew install haskell-stack

run stack update
run stack setup
run stack build --test --no-run-tests
