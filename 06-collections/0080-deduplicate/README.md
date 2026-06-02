# 0080 — Deduplicate

Remove duplicates from `1, 2, 2, 3, 1`, keeping the first occurrence of each in order, and print `1 2 3`. `Set.insert` returns `(inserted:)` which is `true` only the first time, so `filter` keeps each value's first occurrence (a `Set` alone would lose order).

## Run

    swift main.swift
