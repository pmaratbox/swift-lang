# 0015 — Interfaces

Define a `Shape` interface with `name()` and `area()` methods, implement it for a rectangle and a square, then loop over a collection of shapes and print each one's area. Swift spells an interface as a `protocol`, and a value type like a `struct` adopts it by listing it after a colon and supplying every required method. An array typed as `[Shape]` holds either struct behind the protocol's existential type, and iterating it calls `s.area()` through the protocol, dispatching to the concrete struct at runtime.

## Run

    swift main.swift
