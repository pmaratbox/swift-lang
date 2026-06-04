# 0115 — Dispatch Table

Store functions in a map keyed by name, then apply "add" and "mul" to (3,4), printing `7 12`. Swift stores the `+` and `*` operators as values in a `[String: (Int, Int) -> Int]` dictionary and looks them up by key.

## Run

    swift main.swift
