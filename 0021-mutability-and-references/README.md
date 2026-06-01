# 0021 — Mutability & References

Have a function increment a value in place — through a pointer, reference, or mutable holder — so the caller sees it change from `before: 1` to `after: 2`. `inout` makes the parameter a two-way binding: the argument is copied in, mutated, and copied back on return, so the caller must pass `&n` and the variable must be a `var`. It behaves like a reference for value types without exposing a pointer.

## Run

    swift main.swift
