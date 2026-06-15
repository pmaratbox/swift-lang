# 0468 — Scalar types

Serialize an object holding the three primitive scalar kinds — `bool`, `int`, and `string` — to compact JSON. This lesson uses Foundation's `Codable` together with `JSONEncoder`, setting `outputFormatting = .sortedKeys` so the keys come out in alphabetical order. Swift emits boolean values as lowercase `true`/`false` and omits whitespace by default, producing the canonical compact form.

## Run

    swift main.swift
