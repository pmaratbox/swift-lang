# 0462 — Array of objects

Serializes a list of `Person(age:Int, name:String)` values to a compact JSON array using Foundation's `Codable` and `JSONEncoder`. A `[Person]` array encodes element-by-element; fields are declared alphabetically and `JSONEncoder.outputFormatting = .sortedKeys` guarantees alphabetical key order with no extra whitespace, producing canonical compact JSON.

## Run

    swift main.swift
