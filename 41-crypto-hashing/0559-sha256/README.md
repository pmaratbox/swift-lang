# 0559 — SHA-256

Compute the SHA-256 of the UTF-8 bytes of `hello` using Apple's CryptoKit framework, then print the lowercase hex digest (no colons or spaces). `SHA256.hash(data:)` returns a fixed `Digest` whose bytes are formatted with `%02x`.

## Run

    swift main.swift
