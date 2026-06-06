# 0428 — Scan (Running Fold)

Use the library's scan operator to emit the running sum of 1, 2, 3, 4. Built with Apple Combine's `scan(0) { $0 + $1 }` operator, which (unlike some libraries) does not emit the seed.

## Run

    swift main.swift
