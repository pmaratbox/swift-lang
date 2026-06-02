# 0009 — Maps

Build a `[String: Int]` dictionary `["one": 1, "two": 2, "three": 3]`, look up
`"two"`, and print its value and the dictionary's count. Swift's `Dictionary`
is a value type written with the `[Key: Value]` shorthand; `dict[key]` returns
an `Optional` that is `nil` when the key is absent, so force-unwrap with `!`
(or bind with `if let`) to get the value, and `.count` counts the entries.

## Run

    swift main.swift
