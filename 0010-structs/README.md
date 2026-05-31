# 0010 — Structs

Define a `Person` struct with a `name` and an `age`, create one ("Ada", 36), and
print each field. A `struct` is a value type; the compiler synthesizes a
memberwise initializer, so `Person(name:, age:)` needs no hand-written `init`.
Declaring the fields with `let` makes each instance immutable. Fields are read
with dot access (`p.name`).

## Run

    swift main.swift
