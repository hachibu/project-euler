# project-euler

![](https://projecteuler.net/profile/hachibu.png)

## Requirements

- [Haskell Stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)

## Setup

	  stack update
	  stack setup
	  stack build

## Testing

### Run All Tests

    stack test

### Run 1 Test

    stack test --test-arguments "-m Problem001"

### Run And Watch 1 Test

    stack test --test-arguments "-m Problem001" --file-watch

## Development

### Create a New Problem

    stack runghc scripts/NewProblem.hs <problem-number>
