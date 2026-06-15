# 0565 — Base64 encode

Base64-encode the UTF-8 bytes of `hello` using Foundation's `Data` type, then print the resulting Base64 string. `Data(_:).base64EncodedString()` performs the standard RFC 4648 encoding (with `=` padding), turning the 5 input bytes into `aGVsbG8=`.

## Run

    swift main.swift
