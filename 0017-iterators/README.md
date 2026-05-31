# 0017 — Iterators

Take the numbers 1 through 5, keep the even ones, double each, and add them up —
a filter, then a map, then a reduce — printing the final sum. Swift chains the
sequence methods directly: `filter` is the filter, `map` is the map, and
`reduce(0, +)` is the reduce, seeding an accumulator at `0` and folding with the
`+` operator passed as a value. The trailing-closure syntax with the `$0`
shorthand keeps each transform terse, though each step does build an intermediate
array rather than staying lazy.

## Run

    swift main.swift
