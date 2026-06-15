# 0467 — Field rename

Map a Swift code field to a different JSON key using Foundation's `Codable` with a custom `CodingKeys` enum. The `fullName` property is encoded under the JSON key `full_name`, and `JSONEncoder` (with `.sortedKeys`) produces compact, alphabetically-keyed output.

## Run

    swift main.swift
