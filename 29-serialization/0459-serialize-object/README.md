# 0459 — Serialize an object

Serializes a typed `Person(age:Int, name:String)` value to a compact JSON string using Foundation's `Codable` and `JSONEncoder`. Fields are declared alphabetically and `JSONEncoder.outputFormatting = .sortedKeys` guarantees alphabetical key order with no extra whitespace, producing canonical compact JSON.

## Run

    swift main.swift
