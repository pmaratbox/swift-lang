# 0460 — Deserialize an object

Parse a JSON string into a typed object using Foundation's `Codable` and `JSONDecoder`. The `Person` struct conforms to `Codable`, and `JSONDecoder().decode(Person.self, from:)` maps the JSON keys onto the matching stored properties. The decoded value is then printed as `name age`.

## Run

    swift main.swift
