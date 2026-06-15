# 0563 — HMAC-SHA256

Compute an HMAC-SHA256 authentication code over the UTF-8 bytes of `hello` using the key `key` with Apple's CryptoKit framework, then print the lowercase hex digest (no colons or spaces). `HMAC<SHA256>.authenticationCode(for:using:)` takes a `SymmetricKey` and returns a fixed-size code whose bytes are formatted with `%02x`.

## Run

    swift main.swift
