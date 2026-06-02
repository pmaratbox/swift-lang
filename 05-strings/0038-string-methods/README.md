# 0038 — String Methods

Split `"a,b,c"` on commas, upper-case each part, and join them with `-`, printing `A-B-C`. `split(separator: ",")` returns lightweight `Substring` slices (no copying), `map` upper-cases each with `uppercased()`, and `joined(separator: "-")` produces the final `String`. Substrings share the original's storage.

## Run

    swift main.swift
