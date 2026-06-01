# 0025 — Tuples & Multiple Return

Return both the smaller and larger of `3` and `7` from one function, unpacking the pair to print `min: 3` and `max: 7`. Swift tuples group values with optional names: the function returns `(Int, Int)` and `let (lo, hi) = ...` destructures positionally. Naming the elements (`-> (lo: Int, hi: Int)`) lets callers use `.lo`/`.hi` instead.

## Run

    swift main.swift
