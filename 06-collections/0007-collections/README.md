# 0007 — Collections

Build an array of the integers `1, 2, 3, 4, 5`, then print its count and its
first and last elements. `[Int]` is `Array<Int>`, the growable value-type
workhorse, and its size is the `count` property. Because indexing an empty
array would trap, Swift offers the `first` and `last` properties, which return
an `Optional` — force-unwrapped here with `!` since the array is non-empty.

## Run

    swift main.swift
