# 0047 — Immutable Update (Copy-with)

Make a copy of the point `(1, 2)` with its `x` changed to `9`, leaving the original intact, and print `original: (1, 2)` then `updated: (9, 2)`. Swift structs are value types: assigning `var p2 = p1` copies it, and mutating `p2.x` cannot affect the `let` original. Standard-library containers like `Array` add copy-on-write so their copies stay cheap, but a plain value struct like this is copied field by field.

## Run

    swift main.swift
