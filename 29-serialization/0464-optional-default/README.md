# 0464 — Optional field default

Use Foundation's `Codable` / `JSONDecoder` to deserialize JSON that is missing a field. The `Person` type provides a custom `init(from:)` that reads `age` with `decodeIfPresent` and falls back to a default of `0` when the key is absent, while `name` is required. Decoding `{"name":"alice"}` therefore yields `Person(name: "alice", age: 0)`.

## Run

    swift main.swift
