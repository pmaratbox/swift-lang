# 0463 — Array of primitives

Serializes the integer list `[1, 2, 3]` to a compact JSON array using Foundation's `JSONEncoder` (the `Codable` system). `[Int]` conforms to `Codable`, so it encodes directly to a JSON array with no extra whitespace; `outputFormatting = .sortedKeys` keeps output canonical. The resulting `Data` is decoded back to a UTF-8 `String` and printed.

## Run

    swift main.swift
