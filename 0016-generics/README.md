# 0016 — Generics

Define a generic `first` function that returns the first element of a list, then
call it on a list of integers and a list of strings to show one definition
working at two types. Swift writes the type parameter in angle brackets after
the name as `func first<T>(_ items: [T]) -> T`, and infers `T` from the argument
so each call needs no explicit type. Generics are fully type-checked at compile
time yet keep `T` as a concrete type at runtime, so value types like `Int` are
specialized rather than boxed.

## Run

    swift main.swift
