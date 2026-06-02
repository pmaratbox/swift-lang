# 0048 — Maps: Iterate & Transform

Build a map from letters to numbers (`a`->1, `b`->2, `c`->3), sum all its values, and print `sum: 6`. A `[String: Int]` dictionary literal's `.values` collection is folded with `reduce(0, +)`. Iterating the dictionary yields `(key, value)` tuples, and `mapValues` transforms them.

## Run

    swift main.swift
