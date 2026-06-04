# 0326 — Monoid Fold

Fold lists under two monoids: string concat ["a","b","c"]->"abc" and integer sum [1,2,3]->6, printing `abc 6`. A generic fold over an identity and `combine` reuses `reduce` for both monoids.

## Run

    swift main.swift
