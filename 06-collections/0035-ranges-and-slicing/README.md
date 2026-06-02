# 0035 — Ranges & Slicing

From the list `[10, 20, 30, 40, 50]`, take the sub-sequence at indices 1 through 4 (exclusive) and print `slice: 20 30 40`. A half-open range `nums[1..<4]` subscripts the array, returning an `ArraySlice` that shares the original's storage (keeping the parent's indices). `1...3` is the closed-range form; converting with `Array(...)` makes a copy.

## Run

    swift main.swift
