# 0005 — Loops

Print 1..5 with a `for-in` loop over a range. Swift's `1...5` is a **closed**
range that includes both ends, while `1..<6` is half-open and stops before 6.
Swift has no C-style `for (;;)` loop — `for-in` over a `Range`, `Stride`, or
any `Sequence` is the idiom, alongside `while` and `repeat/while`.

## Run

    swift main.swift
