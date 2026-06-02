# 0039 — Records & Value Equality

Create two points with the same fields, print one as `point: (1, 2)`, and compare them by value to print `equal: yes`. Conforming a `struct` to `Equatable` lets the compiler synthesize `==` from its stored properties, so the two points compare equal. Structs are value types, copied on assignment.

## Run

    swift main.swift
