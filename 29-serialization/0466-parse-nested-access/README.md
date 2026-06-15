# 0466 — Parse & access nested

Parse a JSON string with Foundation's `JSONDecoder` (the `Codable` API) into matching nested structs, then read a deeply nested value. The decoder maps the object into `Payload` containing a `User` struct, and we print `user.name` followed by the first element of the `roles` array.

## Run

    swift main.swift
