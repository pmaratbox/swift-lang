# 0561 — SHA-1

Compute the SHA-1 of the UTF-8 bytes of `hello` using Apple's CryptoKit framework, then print the lowercase hex digest (no colons or spaces). SHA-1 is legacy, so CryptoKit exposes it as `Insecure.SHA1.hash(data:)`, returning a fixed `Digest` whose bytes are formatted with `%02x`.

## Run

    swift main.swift
