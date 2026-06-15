# 0465 — Round trip

Round-trips a `Person(age:Int, name:String)` value through Foundation's `Codable`: `JSONEncoder` serializes it to compact JSON (`.sortedKeys` for canonical alphabetical key order), then `JSONDecoder` deserializes the same bytes back into a `Person`, and the decoded `name` is printed.

## Run

    swift main.swift
