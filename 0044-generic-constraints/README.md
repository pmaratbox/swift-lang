# 0044 — Generic Constraints

Write a generic `largest(a, b)` that requires an ordered type, then call it on integers (3 and 9) and on strings (apple and pear), printing `9` and `pear`. The constraint `<T: Comparable>` requires `T` to conform to the `Comparable` protocol, which supplies `>`. Protocol constraints are how Swift generics state their requirements.

## Run

    swift main.swift
