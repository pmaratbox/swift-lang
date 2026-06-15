# 0562 — MD5

Apple's CryptoKit framework exposes legacy algorithms under the `Insecure`
namespace. Here we call `Insecure.MD5.hash(data:)` to compute the 128-bit MD5
digest of the fixed string `"hello"`, then format each byte as two lowercase
hex characters with `String(format: "%02x", $0)` and join them. MD5 is
deterministic, so a fixed input always yields the same digest.

## Run

    swift main.swift
