# 0049 — Zip & Enumerate

Pair the letters `a, b, c` with the numbers `1, 2, 3` position by position, formatting each pair as `key=value` and printing `a=1 b=2 c=3`. The global `zip(letters, nums)` returns a sequence of pairs, accessed as `$0`/`$1` in the closure. Its enumerate counterpart, `enumerated()`, pairs each element with its offset.

## Run

    swift main.swift
