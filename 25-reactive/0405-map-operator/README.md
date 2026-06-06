# 0405 — Map Operator

Implement a map operator that transforms each emitted value, applying x => x*2 to a stream of 1, 2, 3, 4. Swift generics let `map` wrap the source Observable and forward `f($0)` through a struct-based Observer.

## Run

    swift main.swift
