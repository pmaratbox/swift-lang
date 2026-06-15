# 0461 — Nested object

Serialize an object that contains another object using Foundation's `Codable` with `JSONEncoder`. Both `Person` and the nested `Address` conform to `Codable`, and `JSONEncoder.outputFormatting = .sortedKeys` emits compact JSON with keys in alphabetical order at every level.

## Run

    swift main.swift
