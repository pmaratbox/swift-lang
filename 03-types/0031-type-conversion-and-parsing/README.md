# 0031 — Type Conversion & Parsing

Parse the string `"42"` into an integer and `"3.5"` into a float, then convert the integer back to a string, printing `int: 42`, `float: 3.5`, and `str: 42`. Swift's `Int` and `Double` have *failable* initializers — `Int("42")` and `Double("3.5")` return an `Optional` (force-unwrapped here) — and `String(n)` converts back. The string initializers are locale-independent.

## Run

    swift main.swift
