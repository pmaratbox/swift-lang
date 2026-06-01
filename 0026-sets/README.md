# 0026 — Sets

Build a set from `1, 2, 2, 3` so the duplicate collapses, then print its `size: 3` and whether it contains `2` (`has 2: yes`) and `5` (`has 5: no`). `Set` (here inferred as `Set<Int>` from the literal) stores unique, `Hashable` elements and discards the duplicate; `.count` sizes it and `.contains` tests membership in O(1) average. A bare `[...]` literal would be an `Array`, so the `Set` annotation is required.

## Run

    swift main.swift
