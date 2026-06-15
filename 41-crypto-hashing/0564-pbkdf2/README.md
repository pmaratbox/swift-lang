# 0564 — PBKDF2

Derive a 32-byte key from the password `password` and salt `salt` with PBKDF2-HMAC-SHA256 over 1000 iterations, using Apple's CommonCrypto framework (`CCKeyDerivationPBKDF` with `kCCPBKDF2` and `kCCPRFHmacAlgSHA256`), then print the lowercase hex of the derived key bytes (no colons or spaces).

## Run

    swift main.swift
