# 0086 — Sort a Map by Value

Sort the map `{a: 3, b: 1, c: 2}` by value in ascending order and print the entries: `b:1 c:2 a:3`. `Dictionary.sorted { $0.value < $1.value }` returns the entries as an array ordered by value.

## Run

    swift main.swift
