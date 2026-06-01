# 0032 — Math Functions

Take the square root of `16`, raise `2` to the 10th power, the absolute value of `-5`, and the larger of `3` and `9`, printing `sqrt: 4`, `pow: 1024`, `abs: 5`, and `max: 9`. `sqrt` and `pow` come from Foundation's C math library and return `Double` (wrapped back with `Int(...)`), while `abs` and `max` are Swift standard-library generics. The stdlib also offers `(16.0).squareRoot()` without importing Foundation.

## Run

    swift main.swift
