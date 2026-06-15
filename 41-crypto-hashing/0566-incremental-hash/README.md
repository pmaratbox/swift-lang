# 0566 — Incremental hashing

Hash data across two `update` calls using Apple's CryptoKit framework and the SHA-256 algorithm. Instead of `SHA256.hash(data:)`, create a mutable `SHA256()` hasher, feed it `foo` then `bar` with separate `update(data:)` calls, then `finalize()`. The result equals the SHA-256 of `foobar`, printed as a lowercase hex digest (no colons or spaces).

## Run

    swift main.swift
